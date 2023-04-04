class Journal < ApplicationRecord
  has_many :entries, dependent: :destroy
  
  # Validations
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :first_publishing_date, presence: true
  validates :publisher, presence: true
  
  # Helper methods
  def published_entries
    entries.where(is_published: true)
  end
  
  def unpublished_entries
    entries.where(is_published: false)
  end
  
  def most_recent_entry
    published_entries.order(published_at: :desc).first
  end
  
  def oldest_entry
    published_entries.order(published_at: :asc).first
  end
end
