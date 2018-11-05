class Match < ApplicationRecord
    has_one :team_home, :class_name => 'Team', :foreign_key => 'team_home_id'
    has_one :team_away, :class_name => 'Team', :foreign_key => 'team_away_id'
    has_many :match_predictions
    has_many :users, through: :match_predictions
end
