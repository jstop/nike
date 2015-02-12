json.array!(@cp3s) do |cp3|
  json.extract! cp3, :first, :last, :minutes, :seconds
  json.url cp3_url(cp3, format: :json)
end
