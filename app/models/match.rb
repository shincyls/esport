class Match < ApplicationRecord
    has_many :match_predictions
    has_many :users, through: :match_predictions
    belongs_to :tournament
    belongs_to :bracket
    belongs_to :team_home, class_name: 'Team', foreign_key: 'team_home_id'
    belongs_to :team_away, class_name: 'Team', foreign_key: 'team_away_id'
end
