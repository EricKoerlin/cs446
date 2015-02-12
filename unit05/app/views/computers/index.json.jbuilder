json.array!(@computers) do |computer|
  json.extract! computer, :id, :brand, :price, :screen_size
  json.url computer_url(computer, format: :json)
end
