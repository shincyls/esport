class Tournament < ApplicationRecord
    has_many :matches, :dependent => :delete_all
    has_one_attached :banner
    scope :with_matches, -> {includes(:matches).where.not(matches: { id: nil })}
end
