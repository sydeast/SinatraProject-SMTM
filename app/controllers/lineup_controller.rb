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

    post '/lineups' do
        @lineup = Lineup.new(params)
        @lineup.user_id = current_user.id
        if @lineup.save
            params[:selections].each do |artists|
                artists = LineupArtists.new(:artist.id => artists, :lineup_id => @lineup_id)
            end
        end
        redirect "/lineups/#{@lineup.id}"
    end

    get '/lineups/:id' do
        get_lineup
        erb :'/lineups/show'
    end

  helpers do
    #Create new lineup
    def new_lineup
        @user_options = Artist.all.where(read_only: "t")
        @lineup = Lineup.new
    end

    def get_lineup
        @lineup = Lineup.find(params[:id])
    end
  end
end