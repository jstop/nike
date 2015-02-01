json.array!(@footworks) do |footwork|
  json.extract! footwork, :first, :last, :email, :score
  json.url footwork_url(footwork, format: :json)
end
