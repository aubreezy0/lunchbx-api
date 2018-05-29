# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :cuisine, :user_id
end
