class CreateModeloRoupas < ActiveRecord::Migration
  def change
    create_table :modelo_roupas do |t|
      t.string :descricao
      t.references :tipo_roupa

      t.timestamps
    end
  end
end
