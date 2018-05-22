$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'talktome/version'

Gem::Specification.new do |s|
  s.name        = 'talktome'
  s.version     = Talktome::VERSION
  s.date        = '2017-08-01'
  s.summary     = "Talktome helps you talk to users by email, messaging, sms, etc."
  s.description = "Talktome helps you talk to users by email, messaging, sms, etc. It abstracts the messaging mechanisms and lets you manage message templates easily."
  s.authors     = ["Bernard Lambeau"]
  s.email       = 'blambeau@gmail.com'
  s.files       = Dir['LICENSE.md', 'Gemfile','Rakefile', '{bin,lib,spec,tasks,examples}/**/*', 'README*'] & `git ls-files -z`.split("\0")
  s.homepage    = 'http://github.com/enspirit/talktome'
  s.license     = 'MIT'

  s.add_development_dependency "rake", "~> 10"
  s.add_development_dependency "rspec", "~> 3.6"

  s.add_runtime_dependency 'path', '~> 1.3'
  s.add_runtime_dependency 'mail', '~> 2', '>= 2.6.6'
  s.add_runtime_dependency 'mustache', '~> 1', '>= 1.0.5'
  s.add_runtime_dependency 'redcarpet', '~> 3', '>= 3.4'
end
