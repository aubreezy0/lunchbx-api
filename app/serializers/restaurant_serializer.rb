# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :cuisine
  belongs_to :user_id
end
