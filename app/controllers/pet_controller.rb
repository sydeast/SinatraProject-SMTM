class PetController < App


    get '/pets' do
        if_not_logged_in
        @pets = current_user.pets
        erb :'pets/index'
    end


    get '/pets/new' do
        if_not_logged_in
        erb :'pets/new'
    end

    post '/pets' do
        if_not_logged_in
        new_pet
        @pet.user_id = current_user.id
        @pet.neutered_spayed ||= false
        @pet.save
        redirect "/pets/#{@pet.id}"
    end

    get '/pets/:id' do
        if_not_logged_in
        if_not_allowed
        get_pet
        erb :'/pets/show'

    end

    get '/pets/:id/edit' do
        if_not_logged_in
        get_pet
        erb :'/pets/edit'
    end

    patch '/pets/:id' do
        if_not_logged_in
        if_not_allowed
        get_pet
        @pet.update(params["pet"])
        redirect "/pets/#{@pet.id}"
    end

    delete '/pets/:id' do
        if_not_logged_in
        if_not_allowed
        get_pet
        @pet.destroy
        redirect 'pets/index'
    end



  helpers do
    #Create new pet
    def new_pet
        @pet = Pet.new(params)
    end

    def get_pet
        @pet = Pet.find_by(id: params[:id])
    end

    def if_not_allowed
        get_pet
        if @pet.nil? || @pet.user_id != current_user.id
            redirect '/error'
        end
    end

  end
end