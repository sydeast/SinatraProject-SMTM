class Lineup < ActiveRecord::Base
    belongs_to :creator, class_name: "User"
    # has_many :artists, as: :attachable
    has_and_belongs_to_many :artists

    # def default_lineup

    # end
end