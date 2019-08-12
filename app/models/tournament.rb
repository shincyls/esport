class Tournament < ApplicationRecord
    
    include ActionView::Helpers::DateHelper

    has_many :matches, :dependent => :delete_all
    has_many :match_predictions, :dependent => :delete_all
    has_one_attached :banner
    has_one_attached :logo
    scope :with_matches, -> {includes(:matches).where.not(matches: { id: nil })}

    def populate_result
        for match in self.matches
            for matpred in match.match_predictions
                if matpred.answer_1 == matpred.match.answer_1
                    matpred.score_1 = matpred.match.gain_1
                end
                if matpred.answer_2 == matpred.match.answer_2
                    matpred.score_2 = matpred.match.gain_2
                end
                if matpred.answer_3 == matpred.match.answer_3
                    matpred.score_3 = matpred.match.gain_3
                end
                if matpred.answer_4 == matpred.match.answer_4
                    matpred.score_4 = matpred.match.gain_4
                end
                if matpred.answer_5 == matpred.match.answer_5
                    matpred.score_5 = matpred.match.gain_5
                end
                matpred.scores = matpred.score_1 + matpred.score_2 + matpred.score_3 + matpred.score_4 + matpred.score_5
                self.last_populate = Time.now
                matpred.save
                self.save
            end
        end
    end


    def total_questions
        count = 0
        for match in self.matches
            count += 1 unless match.question_1.blank?
            count += 1 unless match.question_2.blank?
            count += 1 unless match.question_3.blank?
            count += 1 unless match.question_4.blank?
            count += 1 unless match.question_5.blank?
        end
        return count
    end
    
end
