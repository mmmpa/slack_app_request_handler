require 'json'
require 'pp'
require './tasks/type_detection_generation'
require './tasks/params_models_generation'

class ModelsGeneration
  RESOURCES_DIR = Pathname('./slack_resources/resources/event_api')
  OUTPUT_DIR = Pathname('./lib/slack_app_request_handler')

  def execute!
    FileUtils.mkdir_p(OUTPUT_DIR)
    FileUtils.mkdir_p(OUTPUT_DIR.join('parameters', 'event_api'))

    TypeDetectionGeneration.new(meta: meta, output: OUTPUT_DIR.join('type_detection.rb')).execute!
    ParamsModelsGeneration.new(defs: defs, output: OUTPUT_DIR.join('parameters', 'event_api')).execute!

    `bundle exec rubocop -a lib/slack_app_request_handler/parameters` if ENV['WITH_FORMATTER']
  end

  def schema
    @schema ||= JSON.parse(File.read(RESOURCES_DIR.join('schema.json')))
  end

  def meta
    @meta ||= JSON.parse(File.read(RESOURCES_DIR.join('meta.json')))
  end

  def defs
    schema['definitions']
  end
end

ModelsGeneration.new.execute!
