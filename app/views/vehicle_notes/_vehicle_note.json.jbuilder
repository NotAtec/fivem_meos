json.extract! vehicle_note, :id, :body, :vehicle_id, :user_id, :created_at, :updated_at
json.url vehicle_note_url(vehicle_note, format: :json)
