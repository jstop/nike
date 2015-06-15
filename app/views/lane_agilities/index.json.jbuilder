json.array!(@lane_agilities) do |lane_agility|
  json.extract! lane_agility, :first, :last, :email, :team, :minutes, :seconds
  json.url lane_agility_url(lane_agility, format: :json)
end
