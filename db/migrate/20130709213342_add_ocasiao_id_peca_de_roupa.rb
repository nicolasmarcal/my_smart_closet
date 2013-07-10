class AddOcasiaoIdPecaDeRoupa < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :ocasiao_id, :integer, :references => :ocasiaos
  end

  def down
  end
end
