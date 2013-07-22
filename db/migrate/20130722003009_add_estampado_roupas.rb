class AddEstampadoRoupas < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :estampada, :boolean
  end

  def down
  end
end
