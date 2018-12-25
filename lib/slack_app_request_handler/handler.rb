module SlackAppRequestHandler
  class Handler
    include TypeDetection

    attr_reader :raw_params, :params

    def initialize(raw_params:, params:)
      @raw_params = raw_params
      @params = params
    end
  end
end
