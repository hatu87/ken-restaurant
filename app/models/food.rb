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

  def self.get_food(food_id, is_viewing = false)
    food = find(food_id)

    if is_viewing
      food.view_count += 1
      food.save!
    end

    food
  end
end
