require 'json'
require 'pp'
require 'slack_resources'
require './tasks/type_detection_generation'
require './tasks/params_models_generation'

class ModelsGeneration
  RESOURCES_DIR = Pathname('./slack_resources/resources/event_api')
  OUTPUT_DIR = Pathname('./lib/slack_app_request_handler')

  def execute!
    FileUtils.mkdir_p(OUTPUT_DIR)
    FileUtils.mkdir_p(OUTPUT_DIR.join('parameters', 'event_api'))

    # TypeDetectionGeneration.new(meta: meta, output: OUTPUT_DIR.join('type_detection.rb')).execute!
    ParamsModelsGeneration.new(details: details, event_types: event_types, output: OUTPUT_DIR.join('parameters', 'event_api')).execute!

    `bundle exec rubocop -a lib/slack_app_request_handler/parameters` if ENV['WITH_FORMATTER']
  end

  private

  def event_types
    @event_types ||= SlackResources::Resources::EventApi.event_types.sort
  end

  def details
    @schemas ||= event_types.map { |name| SlackResources::Resources::EventApi.detail(name) }
  end

  def meta
    @meta ||= JSON.parse(File.read(RESOURCES_DIR.join('meta.json')))
  end
end

ModelsGeneration.new.execute!
