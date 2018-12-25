require 'slack_resources'

RSpec.describe SlackAppRequestHandler do
  it 'has a version number' do
    expect(SlackAppRequestHandler::VERSION).not_to be nil
  end

  it 'does something useful' do
    pp ex =  SlackResources::Resources::EventApi.event_types.sample
    pp SlackResources::Resources::EventApi.schema(ex)
  end
end
