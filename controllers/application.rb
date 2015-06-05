class GithubLanguage < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/*' do
    @user = params[:username]
    erb :index
  end

  get '/html' do
    erb :html
  end

end
