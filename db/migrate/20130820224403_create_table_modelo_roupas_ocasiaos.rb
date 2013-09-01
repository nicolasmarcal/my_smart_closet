class CreateTableModeloRoupasOcasiaos < ActiveRecord::Migration
  def up
    create_table :modelo_roupas_ocasiaos do |t|
      t.references :modelo_roupa
      t.references :ocasiao
    end
  end

  def down
  end
end
