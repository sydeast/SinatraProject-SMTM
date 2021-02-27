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


  post '/register' do
    if_not_logged_in
    user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if User.find_by(email: params[:email])
      @error = "Email already taken. Please login or use another email address."
      redirect '/register'
    else
      user.save
      session[:user_id] = user.id
      redirect 'users/show'
    end
  end

  get '/logout' do
        session.clear
        redirect to '/'
    end

  get '/users/account' do
    if_not_logged_in
    erb :'users/account'
  end


  delete '/users/account' do
    if_not_logged_in
    current_user.pets.each do |pet|
        pet.delete
      end
    current_user.delete
    redirect to '/register'
  end


  get '/users/:id' do
    if_not_logged_in
    @user = User.find_by_id(params[:id])
    erb :"users/show"
  end

end