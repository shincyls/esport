class Match < ApplicationRecord
    has_many :match_predictions
    has_many :users, through: :match_predictions
    serialize :questions, Hash
    belongs_to :tournament
    belongs_to :bracket
    belongs_to :team_home, class_name: 'Team', foreign_key: 'team_home_id'
    belongs_to :team_away, class_name: 'Team', foreign_key: 'team_away_id'
    belongs_to :team_won, class_name: 'Team', foreign_key: 'team_won_id'

    def predicted(user)
        if self.match_predictions.where(user_id: user.id, match_id: self.id).exists?
            return "predicted"
        end
    end

end
