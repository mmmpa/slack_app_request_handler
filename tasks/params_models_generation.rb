require 'active_support/core_ext/object/blank'
require 'active_support/core_ext/string/inflections'

class ParamsModelsGeneration
  def initialize(definitions:, output:)
    @definitions = definitions
    @output = output
  end

  def execute!
    FileUtils.rm_r(@output)
    FileUtils.mkdir_p(@output)

    @definitions.each do |k, v| # rubocop:disable Metrics/BlockLength:
      next unless object?(k)

      file_name_base = k.tr('.', '_')
      class_name = file_name_base.camelize
      attributes = v['properties']

      inner =
        if attributes.present?
          defs = parameterize(attributes).join("\n")
          <<-INNER
        attr_reader :params, :event_wrapper, #{attributes.map { |a, _| ":#{a}" }.join(', ')}

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          #{defs}
        end
          INNER
        else
          <<-INNER
            attr_reader :params, :event_wrapper

            def initialize(params, event_wrapper = nil)
              @params = params
              @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
            end
          INNER
        end

      body = <<~MODULE
        #
        # This module generate by ParamsModelsGeneration.
        # MUST NOT edit it manually.
        #
        module SlackAppRequestHandler
          module Parameters
            module EventApi
              class #{class_name}
        #{inner.to_s.chomp}

                def to_raw
                  params.to_h
                end
              end
            end
          end
        end
      MODULE

      File.write(@output.join("#{file_name_base}.rb"), body)
    end
  end

  private

  def parameterize(attributes)
    attributes.inject([]) do |a, (k, v)|
      a + Array(convert(k, v)).map { |s| '  ' + s }
    end
  end

  def convert(k, v)
    type, ref = pick_ref(v)

    case
    when ref && v['type'] == 'array'
      "@#{k} = params['#{k}'].map { |c| #{ref}.new(c) }"
    when ref && type == :class
      "@#{k} = #{ref}.new(params['#{k}'])"
    when type == :ts
      [
        "@#{k} = params['#{k}']",
        "@#{k}_f = params['#{k}'].to_f",
      ]
    else
      "@#{k} = params['#{k}']"
    end
  end

  def pick_ref(v)
    return unless v.is_a?(Hash)
    return pick_ref(v['items']) if v['type'] == 'array'
    return unless v['$ref']

    key = v['$ref'].split('/').pop

    case
    when object?(key)
      name = key.tr('.', '_').camelize
      [:class, "::SlackAppRequestHandler::Parameters::EventApi::#{name}"]
    when timestamps?(key)
      [:ts]
    end
  end

  def object?(key)
    objects.include?(key)
  end

  def objects
    @objects ||= Set.new(@definitions.select { |_, v| v['type'] == 'object' }.map { |k, _| k })
  end

  def timestamps?(key)
    key == 'timestamp'
  end

  def timestamps
    @timestamps ||= Set.new(@schemas.select { |_, h| p h['$ref'].to_s.match(/timestamp$/) }.keys)
  end
end
