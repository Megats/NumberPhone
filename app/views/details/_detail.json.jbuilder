json.extract! detail, :user_id, :name, :phone_number, :created_at, :updated_at
json.url detail_url(detail, format: :json)
