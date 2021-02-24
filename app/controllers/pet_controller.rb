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
            redirect "/login"
        else
        erb :'pets/new'
        end
    end

    post '/pets' do
        @pet = Pet.new(params)
        @pet.user_id = current_user.id
        @pet.save
        redirect "/pets/#{@pet.id}"
    end

    get '/pets/:id' do
        get_pet
        erb :'/pets/show'
    end

  helpers do
    #Create new pet
    def new_pet
        @pet = Pet.new
    end

    def get_pet
        @pet = Pet.find(params[:id])
    end
  end
end