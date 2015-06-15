json.array!(@vertical_tests) do |vertical_test|
  json.extract! vertical_test, :first, :last, :email, :team, :score
  json.url vertical_test_url(vertical_test, format: :json)
end
