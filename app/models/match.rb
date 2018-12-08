class Match < ApplicationRecord
    has_many :match_predictions
    has_many :users, through: :match_predictions
    belongs_to :tournament
    belongs_to :bracket
end
