json.extract! proyecto, :id, :nombre, :imagen, :description, :created_at, :updated_at
json.url proyecto_url(proyecto, format: :json)
