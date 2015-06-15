json.array!(@standing_reaches) do |standing_reach|
  json.extract! standing_reach, :first, :last, :email, :team, :score
  json.url standing_reach_url(standing_reach, format: :json)
end
