json.array!(@driver_applications) do |driver_application|
  json.extract! driver_application, :id, :user_id, :phone, :status, :city_id, :created_at, :updated_at
  json.url driver_application_url(driver_application, format: :json)
end
