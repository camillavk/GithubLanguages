require 'octokit'

module LanguagesHelper

  def get_repos user
    client = Octokit::Client.new \
      :client_id => ENV["CLIENT_ID"],
      :client_secret => ENV["CLIENT_SECRET"]
    client.repos(user)
  end

  def get_languages user
    repos = get_repos user
    languages = repos.map {|repo| repo.language }
    languages.delete_if {|lang| lang.nil? }
  end

  def calculate_favourite languages
    counter = Hash.new(0)
    languages.each { |i| counter[i] += 1 }
    favourite_languages = []
    counter.each {|k, v| favourite_languages << k if v == counter.values.max }
    favourite_languages.join(", ")
  end

  def favourite_language user
    user_repos = get_repos user
    if user_repos.nil?
      return "Sorry, we couldn't find that github user"
    else
      languages = get_languages user
      # return "Couldn't guess a favourie language" if languages.empty?
      return calculate_favourite languages
    end
  end

end
