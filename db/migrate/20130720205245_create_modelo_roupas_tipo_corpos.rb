class CreateModeloRoupasTipoCorpos < ActiveRecord::Migration
  def up
  	create_table :modelo_roupas_tipo_corpos do |t|
      t.references :tipo_corpo
      t.references :modelo_roupa
     end
  end

  def down
  end
end
