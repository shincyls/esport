class MatchPrediction < ApplicationRecord
    validates :user_id, uniqueness: { scope: :match_id, message: " has been submitted!" }
    belongs_to :user
    belongs_to :match
    serialize :answers, Hash
end
