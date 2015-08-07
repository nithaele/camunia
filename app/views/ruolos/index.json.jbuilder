json.array!(@ruolos) do |ruolo|
  json.extract! ruolo, :id, :ruolo, :user_id
  json.url ruolo_url(ruolo, format: :json)
end
