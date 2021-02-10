class Thru < ActiveRecord::Base
    has_many :lineups
    has_many :artists
end