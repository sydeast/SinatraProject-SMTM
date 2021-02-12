class Lineup < ActiveRecord::Base
    belongs_to :user
    has_many :artists, :as => :rapper

    # def default_lineup

    # end
end