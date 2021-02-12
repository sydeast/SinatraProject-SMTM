class Artist < ActiveRecord::Base
    belongs_to :rapper, :polymorphic => true

end