class CreateEstilos < ActiveRecord::Migration
  def change
    create_table :estilos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
