json.extract! product, :id, :serial_no, :name, :supplier_id, :category_id, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
