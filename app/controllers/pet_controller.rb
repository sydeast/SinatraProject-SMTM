class PetController < App


    get '/pets' do
        if logged_in?
            @pets = current_user.pets
            erb :'pets/index'
        # else
        #     @error: "Please login to continue."
        end
    end


    get '/pets/new' do
        if !logged_in?
            redirect to "/login"
        else
        erb :'pets/new'
        end
    end

    post '/pets' do
        new_pet
        @pet.user_id = current_user.id
        @pet.neutered_spayed ||= false
        @pet.save
        redirect "/pets/#{@pet.id}"
    end

    get '/pets/:id' do
        get_pet
        erb :'/pets/show'
    end

    get '/pets/:id/edit' do
        get_pet
        erb :'/pets/edit'
    end

    patch '/pets/:id' do
        get_pet
        @pet.update(params["age", "weight", "breed", "gender", "neutered_spayed", "medical_conditions"])
        redirect "/pets/#{@pet.id}"
    end

    delete '/pets/:id' do
        get_pet
        @pet.destroy
        redirect to 'pets/index'
    end



  helpers do
    #Create new pet
    def new_pet
        @pet = Pet.new(params)
    end

    def get_pet
        @pet = Pet.find(params[:id])
    end
  end
end