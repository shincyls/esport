class Match < ApplicationRecord
    has_many :match_predictions
    has_many :users, through: :match_predictions
end
