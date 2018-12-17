class TypeDetectionGeneration
  def initialize(meta:, output:)
    @meta = meta
    @output = output
  end

  def execute!
    body = <<~MODULE
      #
      # This module generate by TypeDetectionGeneration.
      # MUST NOT edit it manually.
      #
      # rubocop:disable Metrics/ModuleLength
      module SlackAppRequestHandler
        module TypeDetection
          def type
            case raw_params['type']
            when 'event_callback'
              raw_params['event']['type']
            else
              raw_params['type']
            end
          end

      #{type_equality}
      #{event_type_equality}  end
      end
      # rubocop:enable Metrics/ModuleLength
    MODULE

    File.write(@output, body)
  end

  private

  def types
    @types ||= @meta['types'] - @meta['event_types']
  end

  def type_equality
    types.map { |type|
      <<-METHODS
    def #{type.tr('.', '_')}?
      raw_params['event']['type'] == '#{type}'
    end
      METHODS
    }.join("\n")
  end

  def event_type_equality
    @meta['event_types'].map { |type|
      <<-METHODS
    def #{type.tr('.', '_')}?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == '#{type}'
    end
      METHODS
    }.join("\n")
  end
end
