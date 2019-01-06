class Question < ApplicationRecord
    belongs_to :match
    has_many :answers, :dependent => :destroy
end
