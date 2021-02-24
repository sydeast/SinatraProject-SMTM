class Lineup < ActiveRecord::Base
    belongs_to :creator, class_name: "User"
    # has_many :artists, as: :attachable
    has_many :lineup_artists
    has_many :artists, through: :lineup_artists
end