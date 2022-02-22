json.extract! item, :id, :title, :price, :category_id, :comment, :location,
              :created_at, :updated_at
json.url item_url(item, format: :json)
