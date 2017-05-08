class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :modelo
      t.text :descripcion
      t.string :marca
      t.integer :costo
      t.integer :precio_publico
      t.string :proveedor
      t.string :estado

      t.timestamps
    end
  end
end
