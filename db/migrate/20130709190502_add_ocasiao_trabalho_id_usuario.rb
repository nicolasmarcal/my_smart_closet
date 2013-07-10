class AddOcasiaoTrabalhoIdUsuario < ActiveRecord::Migration
  def up
  	add_column :usuarios, :ocasiao_trabalho_id, :integer, :references => :ocasiaos
  end

  def down
  end
end
