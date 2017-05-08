class CreateMovimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :movimientos do |t|
      t.integer :cantidad
      t.datetime :fecha_movimiento
      t.string :tipo_movimiento
      t.string :usuario
      t.integer :id_producto
      t.text :motivo

      t.timestamps
    end
  end
end
