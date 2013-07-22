class AddProximaCorCores < ActiveRecord::Migration
  def up
  	add_column :cors, :proxima_cor_id, :integer, :references => :cors
  end

  def down
  end
end
