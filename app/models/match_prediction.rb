class MatchPrediction < ApplicationRecord
    validates :user_id, uniqueness: { scope: :match_id, message: " has been submitted!" }

    belongs_to :user
    belongs_to :match

    def match_predicted
        current_user.match_predictions.where(match_id: @match_prediction.id).exists?
    end

end
