json.extract! admin, :id, :username, :password, :name, :created_at, :updated_at
json.url admin_url(admin, format: :json)
