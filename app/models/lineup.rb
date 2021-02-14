class Lineup < ActiveRecord::Base
    belongs_to :user
    has_many :artists

    # def default_lineup

    # end
end