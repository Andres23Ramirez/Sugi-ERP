
json.extract! contrac_establishment, :id, :description, :wayToPay, :porpuse, :file_name, :startDate, :endDate, :establishment_id, :created_at, :updated_at

json.url contrac_establishment_url(contrac_establishment, format: :json)
