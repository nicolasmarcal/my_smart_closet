class AlterRoupaAddFaixaMaxima < ActiveRecord::Migration
  def up
  	rename_column :peca_de_roupas, :faixa_temperatura, :faixa_temperatura_min
  	add_column :peca_de_roupas, :faixa_temperatura_max, :integer
  end

  def down
  end
end
