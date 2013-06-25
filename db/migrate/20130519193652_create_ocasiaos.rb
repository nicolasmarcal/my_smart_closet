class CreateOcasiaos < ActiveRecord::Migration
  def change
    create_table :ocasiaos do |t|
      t.string :descricao
      t.string :tipo_ocasiao

      t.timestamps
    end
  end
end
