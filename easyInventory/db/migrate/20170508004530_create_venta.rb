class CreateVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :venta do |t|
      t.integer :id_usuario
      t.integer :id_producto
      t.datetime :fecha_venta
      t.integer :precio_venta

      t.timestamps
    end
  end
end
