json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :descripcion, :foto, :fotito_id
  json.url post_url(post, format: :json)
end
