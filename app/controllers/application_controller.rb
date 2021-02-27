class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"

  end


  get '/' do
      erb :home
  end

  get '/error' do
    erb :error
  end

  error ActiveRecord::RecordNotFound do
    redirect '/'
  end

  helpers do

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!current_user
    end

    def if_not_logged_in
      if !logged_in?
        redirect to "/login"
      end
    end


  end
end