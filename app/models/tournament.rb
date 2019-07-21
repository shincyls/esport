class Tournament < ApplicationRecord
    has_many :matches, :dependent => :delete_all
    has_one_attached :banner
    has_one_attached :logo
    scope :with_matches, -> {includes(:matches).where.not(matches: { id: nil })}
end
