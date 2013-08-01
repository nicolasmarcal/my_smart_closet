class AddModeloRoupaPecaDeRoupa < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :modelo_roupa_id, :integer, :references => :modelo_roupas
  end

  def down
  end
end
