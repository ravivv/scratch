json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :customer_id, :reminder, :reason
  json.url appointment_url(appointment, format: :json)
end
