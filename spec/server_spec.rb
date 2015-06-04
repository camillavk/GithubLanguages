require_relative './spec_helper'
require_relative '../helpers/languages_helper'

describe GithubLanguage do

  include LanguagesHelper

  context 'when a username has been provided' do

    it 'can create an array of the users languages used on github' do
      user = 'camillavk'
      expect(get_languages user).to include("Ruby", "JavaScript", "CSS")
    end

    it 'can calculate the users favourite language from an array of languages' do
      languages = ["Ruby", "Ruby", "JavaScript"]
      expect(calculate_favourite languages).to eq "Ruby"
    end

    it 'can calculate the users favourite language based on the languages it gets from github' do
      user = 'camillavk'
      expect(favourite_language user).to eq "Ruby"
    end

    it 'can provide two languages if they are both as frequent as the other' do
      languages = ["Ruby", "Ruby", "CSS", "CSS", "JavaScript"]
      expect(calculate_favourite languages).to eq "Ruby, CSS"
    end

  end

end
