class Artist < ActiveRecord::Base
    belongs_to :creator, class_name: "User"
    belongs_to :lineups

end