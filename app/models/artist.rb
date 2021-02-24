class Artist < ActiveRecord::Base
    belongs_to :users
    # belongs_to :attachable, polymorphic: true
    has_many :lineup_artists
    has_and_belongs_to_many :lineups, through: :lineup_artists
    # belongs_to :pick1, class_name: 'Lineup', foreign_key: :pick1_id
    # belongs_to :pick2, class_name: 'Lineup', foreign_key: :pick2_id
    # belongs_to :lineup, class_name: 'Lineup', foreign_key: :pick3_id
    # belongs_to :pick4, class_name: 'Lineup', foreign_key: :pick4_id


end