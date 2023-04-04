class Entry < ApplicationRecord
  belongs_to :journal

  validates :title, presence: true
  validates :content, presence: true
  validate :published_at_cannot_be_in_the_future

  scope :published, -> { where(is_published: true) }

  def published!
    self.is_published = true
    self.save
  end

  private

  def published_at_cannot_be_in_the_future
    if published_at.present? && published_at > Time.now
      errors.add(:published_at, "can't be in the future")
    end
  end
end
