json.extract! debt_account, :id, :account_name, :principle, :interest_rate, :minimum_payment, :created_at, :updated_at
json.url debt_account_url(debt_account, format: :json)
