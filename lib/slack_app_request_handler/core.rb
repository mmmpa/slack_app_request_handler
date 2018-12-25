module SlackAppRequestHandler
  class Core
    def initialize(options)
      @options = OpenStruct.new(options)
      @commands = OpenStruct.new(@options.commands || {})
    end

    def handle(params, &block)
      routed = Router.new(
        options: @options,
        commands: @commands,
        params: OpenStruct.new(params)
      ).execute!

      case routed
      when block_given? && Handler
        routed.instance_eval(&block)
      when Handler
        ''
      else
        routed
      end
    end
  end
end
