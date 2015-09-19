json.array!(@events) do |event|
  json.extract! event, :id, :location, :type, :start, :end
  json.url event_url(event, format: :json)
end
