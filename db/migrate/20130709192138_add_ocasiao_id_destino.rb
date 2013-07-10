class AddOcasiaoIdDestino < ActiveRecord::Migration
  def up
  	add_column :destinos, :ocasiao_id, :integer, :references => :ocasiaos
  end

  def down
  end
end
