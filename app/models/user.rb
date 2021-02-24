class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :pets, dependent: :destroy

    # def print_lineup
    #    lineups.collect {|lineup| }
    # end

end