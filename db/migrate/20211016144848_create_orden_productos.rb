class CreateOrdenProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :orden_productos do |t|
      t.references :orden, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.integer :cantidad
      t.decimal :precio
      t.decimal :descuento
      t.string :instrucciones

      t.timestamps
    end
  end
end
