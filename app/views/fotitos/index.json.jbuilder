json.array!(@fotitos) do |fotito|
  json.extract! fotito, :id, :nombre, :imagen
  json.url fotito_url(fotito, format: :json)
end
