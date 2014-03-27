json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :first_name, :last_name, :email, :mobile
  json.url prospect_url(prospect, format: :json)
end
