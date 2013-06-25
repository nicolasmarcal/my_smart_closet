class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
