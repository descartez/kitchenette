class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true


  def self.published
    where(published: true)
  end

  def self.unpublished
    where(published: false)
  end

  def publish!
    set_publish_status(true)
  end

  def unpublish!
    set_publish_status(false)
  end

  private
  def set_publish_status(bool)
    self.published = bool
    self.save
  end
end
