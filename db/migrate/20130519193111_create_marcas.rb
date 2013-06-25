class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
