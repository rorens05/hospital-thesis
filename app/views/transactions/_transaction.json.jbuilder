json.extract! transaction, :id, :date_ordered, :customer_id, :shipping_fee, :payment_method_id, :verified, :delivery_date, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
