# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :cuisine, :user
  belongs_to :user
end
