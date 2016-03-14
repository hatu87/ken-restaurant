class Food < ActiveRecord::Base
  # include ActiveModel::Serializers::JSON
  # attr_accessor :name
  belongs_to :section
  has_many :cart_items
  has_many :order_items
  has_many :comments

  scope :ordered, -> (sortMode) { order(sortMode) }

  def average_rating
    comments.to_a.sum { |comment| comment.rating || 0} / comments.count
  end
end
