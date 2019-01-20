json.extract! customer, :id, :username, :name, :email, :contact_no, :address, :gender, :birthday, :created_at, :updated_at
json.url customer_url(customer, format: :json)
