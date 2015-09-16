json.array!(@emails) do |email|
  json.extract! email, :id, :send_date, :to, :subject, :body, :sent
  json.url email_url(email, format: :json)
end
