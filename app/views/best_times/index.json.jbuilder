json.array!(@best_times) do |best_time|
  json.extract! best_time, :first, :last, :email, :minutes, :seconds
  json.url best_time_url(best_time, format: :json)
end
