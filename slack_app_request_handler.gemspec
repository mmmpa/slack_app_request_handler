lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack_app_request_handler/version'

Gem::Specification.new do |spec|
  spec.name          = 'slack_app_request_handler'
  spec.version       = SlackAppRequestHandler::VERSION
  spec.authors       = ['mmmpa']
  spec.email         = ['mmmpa.mmmpa@gmail.com']

  spec.summary       = 'handle slack app request'
  spec.description   = 'handle slack app request'
  spec.homepage      = 'https://github.com/mmmpa/slack_app_request_handler'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'onkcop'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'sinatra'
end
