json.array!(@controls) do |control|
  json.extract! control, :first, :last, :email, :score, :minutes, :seconds
  json.url control_url(control, format: :json)
end
