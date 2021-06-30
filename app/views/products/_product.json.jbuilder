json.extract! product, :id, :name, :color, :category, :size, :price, :store, :created_at, :updated_at
json.url product_url(product, format: :json)
