json.extract! restaurant, :id, :latitude, :longitude, :name, :city, :neighbourhood, :address, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
