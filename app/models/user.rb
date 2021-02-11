class User < ActiveRecord::Base
    has_many :lineups
    has_many :artists, through: :lineups
    has_secure_password
    validates :email, uniqueness: true

    # def print_lineup
    #    lineups.collect {|lineup| }
    # end

end