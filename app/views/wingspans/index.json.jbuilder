json.array!(@wingspans) do |wingspan|
  json.extract! wingspan, :first, :last, :email, :team, :score
  json.url wingspan_url(wingspan, format: :json)
end
