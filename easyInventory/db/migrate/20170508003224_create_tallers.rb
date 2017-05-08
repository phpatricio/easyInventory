class CreateTallers < ActiveRecord::Migration[5.0]
  def change
    create_table :tallers do |t|
      t.string :modelo
      t.text :descripcion
      t.datetime :fecha_entrada
      t.integer :cliente
      t.string :marca
      t.string :nro_serie
      t.text :descripcion_falla
      t.integer :cantidad

      t.timestamps
    end
  end
end
