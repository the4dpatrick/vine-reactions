json.array!(@vines) do |vine|
  json.extract! vine, :id, :url
  json.url vine_url(vine, format: :json)
end
