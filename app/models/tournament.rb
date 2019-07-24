class Tournament < ApplicationRecord
    has_many :matches, :dependent => :delete_all
    has_many :match_predictions, :dependent => :delete_all
    has_one_attached :banner
    has_one_attached :logo
    scope :with_matches, -> {includes(:matches).where.not(matches: { id: nil })}

    def populate_result
        for match in self.matches
            for matpred in match.match_predictions
                if matpred.answer_1 == matpred.match.answer_1
                    matpred.score_1 += matpred.match.gain_1
                end
                if matpred.answer_2 == matpred.match.answer_2
                    matpred.score_2 += matpred.match.gain_2
                end
                if matpred.answer_3 == matpred.match.answer_3
                    matpred.score_3 += matpred.match.gain_3
                end
                if matpred.answer_4 == matpred.match.answer_4
                    matpred.score_4 += matpred.match.gain_4
                end
                if matpred.answer_5 == matpred.match.answer_5
                    matpred.score_5 += matpred.match.gain_5
                end
                matpred.scores = matpred.score_1 + matpred.score_2 + matpred.score_3 + matpred.score_4 + matpred.score_5
                matpred.save
            end
        end
    end


    def user_scores
        
        for match in self.matches
            for matpred in match.match_predictions

            end
        end
        

    end
    


end
