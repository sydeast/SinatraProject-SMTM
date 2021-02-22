class Artist < ActiveRecord::Base
    belongs_to :users
    belongs_to :attachable, polymorphic: true


end