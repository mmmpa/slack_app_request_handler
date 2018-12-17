require 'bundler/setup'
require 'slack_app_request_handler'

require 'dotenv/load'
require 'sinatra'
require 'json'
require 'active_support/core_ext/object/blank'

handler = SlackAppRequestHandler.new(
  token: ENV['TOKEN']
)

post '/' do
  content_type :json

  detected = params.presence || JSON.parse(request.body.read)

  pp detected
  handler.handle(detected) {
    pp params
  }.to_json
end
