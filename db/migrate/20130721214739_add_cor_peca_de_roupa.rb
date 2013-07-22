class AddCorPecaDeRoupa < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :cor_id, :integer,:references => :cors
  end

  def down
  end
end
