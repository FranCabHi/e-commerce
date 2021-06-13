json.extract! cupon, :id, :kind, :code, :amount, :discount, :count, :user_id, :created_at, :updated_at
json.url cupon_url(cupon, format: :json)
