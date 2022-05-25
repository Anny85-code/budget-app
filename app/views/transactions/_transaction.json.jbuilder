json.extract! transaction, :id, :name, :amount, :author_id, :group_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
