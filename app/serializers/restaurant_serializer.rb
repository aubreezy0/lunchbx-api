class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_name, :cuisine, :user
end
