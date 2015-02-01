json.array!(@controls) do |control|
  json.extract! control, :first, :last, :email, :score
  json.url control_url(control, format: :json)
end
