class CreatePecaDeRoupas < ActiveRecord::Migration
  def change
    create_table :peca_de_roupas do |t|
      t.integer :id_android
      t.string :descricao
      t.references :usuario
      t.references :estilo
      t.references :marca
      t.references :material
      t.string :caminho_imagem

      t.timestamps
    end
    add_index :peca_de_roupas, :usuario_id
    add_index :peca_de_roupas, :estilo_id
    add_index :peca_de_roupas, :marca_id
    add_index :peca_de_roupas, :material_id
  end
end
