require 'bundler/setup'
require 'slack_app_request_handler'

require 'dotenv/load'
require 'sinatra'
require 'json'
require 'active_support/core_ext/object/blank'

class UtController
  def a(params)
    'this is ut a command.'
  end

  def detection(command_text)
    command_text.split(' ').first.to_s
  end
end

handler = SlackAppRequestHandler.new(
  token: ENV['TOKEN'],
  commands: {
    ut: UtController,
  },
)

post '/' do
  content_type :json

  detected = params.presence || JSON.parse(request.body.read)
  pp detected
  handler.handle(detected) {
    [:inner, params]
  }.to_json
end
