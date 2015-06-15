json.array!(@shuttle_runs) do |shuttle_run|
  json.extract! shuttle_run, :first, :last, :email, :team, :minutes, :seconds
  json.url shuttle_run_url(shuttle_run, format: :json)
end
