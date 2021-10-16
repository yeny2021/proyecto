json.extract! orden_producto, :id, :orden_id, :prodcuto_id, :cantidad, :precio, :instrucciones, :created_at, :updated_at
json.url orden_producto_url(orden_producto, format: :json)
