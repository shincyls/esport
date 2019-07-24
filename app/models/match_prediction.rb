class MatchPrediction < ApplicationRecord
    validates :user_id, uniqueness: { scope: :match_id, message: " has been submitted!" }
    belongs_to :user
    belongs_to :match
    belongs_to :tournament

    def total_scores
        total = self.score_1 + self.score_2 + self.score_3 + self.score_4 + self.score_5
        return total
    end

    def result_json
        agg = t.match_predictions.group('user_id').sum('scores')
        for each in agg
            print(each)
        end 
    end

end
