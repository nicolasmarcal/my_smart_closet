class CreateTipoCorpos < ActiveRecord::Migration
  def change
    create_table :tipo_corpos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
