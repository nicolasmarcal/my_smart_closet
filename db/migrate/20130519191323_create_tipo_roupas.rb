class CreateTipoRoupas < ActiveRecord::Migration
  def change
    create_table :tipo_roupas do |t|
      t.string :descricao
      t.string :tipo_roupa

      t.timestamps
    end
  end
end
