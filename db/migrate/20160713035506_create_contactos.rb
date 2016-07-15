class CreateContactos < ActiveRecord::Migration[5.0]
  def change
    create_table :contactos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :direccion
      t.string :mail

      t.timestamps
    end
  end
end
