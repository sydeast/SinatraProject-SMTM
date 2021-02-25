require 'sinatra/base'
require 'rack-flash'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
    register Sinatra::Flash
  end

  get '/' do
      erb :home
  end


  # post '/login' do
  #   @user = User.find_by(:email => params[:email])
  #   if @user != nil && @user.authenticate(params[:password])
  #     session[:user_id] = @user.id
  #     redirect '/home'
  #   end
  #   erb :error
  # end

  # get '/register' do
  #   erb :register
  # end

  # post '/register' do
  #   @user = User.new(name: params["name"], email: params["email"], password: params["password"])
  #   @user.save
  #   session[:user_id] = @user.id

  #   redirect '/home'
  # end
  get "/artists" do
    @artists = Artist.all
      erb :"artists/index"
  end

  get '/back' do
    redirect back
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
end