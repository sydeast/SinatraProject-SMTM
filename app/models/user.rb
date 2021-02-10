class User < ActiveRecord::Base
    has_many :lineups
    has_many :artists, through: :lineups

    # def print_lineup
    #    lineups.collect {|lineup| }
    # end

end