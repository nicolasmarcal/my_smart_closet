class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.references :usuario
      t.references :destino
      t.references :ocasiao
      t.decimal :temperatura
      t.string :humor_usuario

      t.timestamps
    end
    add_index :looks, :usuario_id
    add_index :looks, :destino_id
    add_index :looks, :ocasiao_id
  end
end
