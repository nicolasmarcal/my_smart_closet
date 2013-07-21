class AddFaixaTemperaturaRoupa < ActiveRecord::Migration
  def up
  	add_column :peca_de_roupas, :faixa_temperatura, :integer
  end

  def down
  end
end
