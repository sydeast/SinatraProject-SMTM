class LineupArtist < ActiveRecord::Base
    belongs_to :artist
    belongs_to :lineup
    has_many :artists
    has_many :lineups

end