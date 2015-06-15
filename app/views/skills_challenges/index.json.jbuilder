json.array!(@skills_challenges) do |skills_challenge|
  json.extract! skills_challenge, :first, :last, :email, :team, :minutes, :seconds
  json.url skills_challenge_url(skills_challenge, format: :json)
end
