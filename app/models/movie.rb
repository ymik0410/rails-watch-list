class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_for_bookmarks?

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  def check_for_bookmarks?
    errors.add(:base, "cannot delete movie with a bookmark") unless bookmarks.count == 0
    errors.blank?
  end
end
