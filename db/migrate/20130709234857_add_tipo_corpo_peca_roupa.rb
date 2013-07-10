class AddTipoCorpoPecaRoupa < ActiveRecord::Migration
  def up
  	create_table :peca_de_roupas_tipo_corpos do |t|
      t.references :peca_de_roupas
      t.references :tipo_corpos
    end
  end

  def down
  end
end
