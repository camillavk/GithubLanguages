ENV['RACK_ENV'] = 'test'
require './server'
require 'capybara'
require 'rack/test'

def app
  GithubLanguage
end

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.include Capybara::DSL
  config.order = 'random'
end
