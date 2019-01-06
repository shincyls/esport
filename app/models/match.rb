class Match < ApplicationRecord
    has_many :match_predictions
    has_many :users, through: :match_predictions

    has_many :questions, :dependent => :destroy

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

    def predicted_boolean(user)
        if self.match_predictions.where(user_id: user.id, match_id: self.id).exists?
            return true
        else
            return false
        end
    end

    def predicted_match(user)
        if self.match_predictions.where(user_id: user.id, match_id: self.id).exists?
            return MatchPrediction.find_by(user_id: user.id, match_id: self.id)
        end
    end

    def predicted_route(user)
        if self.match_predictions.where(user_id: user.id, match_id: self.id).exists?
            @mp = MatchPrediction.find_by(user_id: user.id, match_id: self.id)
            return "/match_predictions/#{@mp.id}/edit"
        else
            return "/match_predictions/new?id=#{self.id}"
        end
    end

end


