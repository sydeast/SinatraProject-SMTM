class User < ActiveRecord::Base
    has_secure_password
    has_many :lineups
    has_many :artists, through: :lineups
    validates :email, uniqueness: true

    # def print_lineup
    #    lineups.collect {|lineup| }
    # end

end