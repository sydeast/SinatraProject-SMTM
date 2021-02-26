class UserController < App

  get '/login' do
    if logged_in?
        redirect to "/users/#{current_user.id}"
    end
    erb :"users/login"
  end

  get '/register' do
    if logged_in?
        redirect to "/users/#{current_user.id}"
    end
    erb :"users/register"
  end

  post '/login' do
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect 'users/show'
    else
        erb :error
    end
  end

  # post '/register' do
  #   user = User.new(params)
  #   if user.save
  #       session[:user_id] = @user.id
  #       redirect to "/users/#{current_user.id}"
  #   else
  #       @error = user.errors.full_messages.join(", ")
  #   end
  # end

  post "/register" do
    user = User.new(params)
    if User.find_by(email: params[:email])
      @error = "Email already taken. Please login or use another email address."
      # redirect back
    # elsif params[:password] != params[:confirm_password]
    #   @error = "Passwords do not match. Please re-enter passwords."
      # redirect back
    else
      User.create(params)
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    end
  end

  get '/logout' do
        session.clear
        redirect to '/'
    end

    get '/users' do
    if !logged_in?
        redirect to '/login'
    end
    @users = User.all
    erb :"users/index"
  end


  get '/users/:id' do
    if !logged_in?
        redirect to '/login'
    end
    @user = User.find_by_id(params[:id])
    erb :"users/show"
  end

end