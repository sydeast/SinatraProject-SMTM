class User < ActiveRecord::Base
    has_secure_password
    has_many :lineups
    has_many :custom_artists, foreign_key: "creator_id", class_name: "Artist"
    validates :email, presence: true, uniqueness: true

    # def print_lineup
    #    lineups.collect {|lineup| }
    # end

end