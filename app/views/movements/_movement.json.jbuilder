json.extract! movement, :id, :movement_date, :movement_type, :description, :amount, :account_id, :created_at, :updated_at
json.url movement_url(movement, format: :json)
