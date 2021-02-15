class LineupController < App
    get '/lineups' do
        if logged_in?
            @lineups = current_user.lineups
            erb :'lineups/index'
        # else
        #     @error: "Please login to continue."
        end
    end


    get '/lineups/new' do
        @artists = Artist.all
        if !logged_in?
            redirect "/login"
        else
        erb :'lineups/new'
        end
    end

    post '/lineups/' do
        @lineup = Lineup.new(params)
    end



    #Create new lineup
    def new_lineup
        @user_options = Artist.all.where(read_only: "t")
        @lineup = Lineup.new
    end


end