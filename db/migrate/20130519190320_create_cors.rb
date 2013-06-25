class CreateCors < ActiveRecord::Migration
  def change
    create_table :cors do |t|
      t.string :descricao
      t.string :tipo_cor
      t.string :rgb

      t.timestamps
    end
  end
end
