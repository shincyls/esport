class MatchPrediction < ApplicationRecord
    validates :user_id, uniqueness: { scope: :match_id, message: " has been submitted!" }
    belongs_to :user
    belongs_to :match
    belongs_to :tournament

    def total_scores
        total = self.score_1 + self.score_2 + self.score_3 + self.score_4 + self.score_5
        return total
    end

    def checkq1
        if self.match.answer_1.empty?
            return ""
        elsif self.answer_1 == self.match.answer_1
            return "mp-correct"
        else
            return "mp-wrong"
        end
    end

    def checkq2
        if self.match.answer_2.empty?
            return ""
        elsif self.answer_2 == self.match.answer_2
            return "mp-correct"
        else
            return "mp-wrong"
        end
    end

    def checkq3
        if self.match.answer_3.empty?
            return ""
        elsif self.answer_3 == self.match.answer_3
            return "mp-correct"
        else
            return "mp-wrong"
        end
    end

    def checkq4
        if self.match.answer_4.empty?
            return ""
        elsif self.answer_4 == self.match.answer_4
            return "mp-correct"
        else
            return "mp-wrong"
        end
    end

    def checkq5
        if self.match.answer_5.empty?
            return ""
        elsif self.answer_5  == self.match.answer_5
            return "mp-correct"
        else
            return "mp-wrong"
        end
    end

    def result_json
        agg = t.match_predictions.group('user_id').sum('scores')
        for each in agg
            print(each)
        end 
    end

end
