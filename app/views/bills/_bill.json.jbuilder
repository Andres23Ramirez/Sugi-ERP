json.extract! bill, :id, :number, :amount, :issueDate, :payDate, :establishment_id, :created_at, :updated_at
json.url bill_url(bill, format: :json)
