json.array!(@verticals) do |vertical|
  json.extract! vertical, :first, :last, :email, :score
  json.url vertical_url(vertical, format: :json)
end
