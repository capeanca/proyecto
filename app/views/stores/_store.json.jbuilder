json.extract! store, :id, :name, :street, :number, :zipcode, :city, :country, :product, :created_at, :updated_at
json.url store_url(store, format: :json)
