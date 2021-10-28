# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categorium.create([{
  nombre: "Alimentos Secos",
  imagen: "https://gatodomestico.com/wp-content/uploads/2018/04/Alimento-seco-para-gatos-2.jpg"
},{
  nombre: "Alimentos Humedos",
  imagen: "https://cdn.shopify.com/s/files/1/0549/7487/3737/products/USA606.png?v=1634336535"
}
])

Producto.create([{
  nombre: "Purina",
  descripcion: "Alimento seco especial para su gato",
  imagen: "https://gatodomestico.com/wp-content/uploads/2018/04/Alimento-seco-para-gatos-2.jpg",
  categorium_id: Categorium.first.id
  },
  
  {
  nombre: "Churus",
  imagen: "https://cdn.shopify.com/s/files/1/0549/7487/3737/products/USA606.png?v=1634336535",
  descripcion: "Premio para gatos",
  categorium_id: Categorium.last.id
  }
])
 
  