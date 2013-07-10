class AddTipoRoupaIdPecaDeRoupa < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :tipo_roupa_id, :integer, :references => :tipo_roupas
  end

  def down
  end
end
