json.array!(@nine_things) do |nine_thing|
  json.extract! nine_thing, :id, :name, :nine_number
  json.url nine_thing_url(nine_thing, format: :json)
end
