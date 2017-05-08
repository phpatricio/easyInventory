class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :correo
      t.datetime :fecha
      t.text :direccion
      t.string :telefono
      t.string :integer

      t.timestamps
    end
  end
end
