json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :index
  json.url welcome_url(welcome, format: :json)
end
