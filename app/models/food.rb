class Food < ActiveRecord::Base
  # include ActiveModel::Serializers::JSON
  # attr_accessor :name
  belongs_to :section

  scope :ordered, -> (sortMode) {order(sortMode)}
end
