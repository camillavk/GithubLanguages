require 'sinatra/base'

class GithubLanguage < Sinatra::Base

  require_relative './helpers/languages_helper'
  require_relative './controllers/application'
  include LanguagesHelper

end
