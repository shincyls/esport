class AnswerQuestionJoin < ApplicationRecord
    has_many :matches
    has_many :questions
    has_many :answers
end
