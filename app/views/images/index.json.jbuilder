json.array!(@images) do |image|
  json.extract! image, :image
  json.url image_url(image, format: :json)
end
