class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario
      t.string :pass
      t.string :correo
      t.integer :tiposuaurio

      t.timestamps
    end
  end
end
