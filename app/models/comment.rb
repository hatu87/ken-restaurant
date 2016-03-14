class Comment < ActiveRecord::Base
  belongs_to :food
  # ratyrate_rateable "rating"

  scope :recent, -> { order(:created_at) }
end
