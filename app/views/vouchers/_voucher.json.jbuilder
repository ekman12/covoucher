json.extract! voucher, :id, :cost, :notes, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)
