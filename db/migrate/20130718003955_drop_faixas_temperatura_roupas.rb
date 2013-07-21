class DropFaixasTemperaturaRoupas < ActiveRecord::Migration
  def up
  	remove_column :peca_de_roupas, :faixa_temperatura_max
  	remove_column :peca_de_roupas, :faixa_temperatura_min
  	add_column :peca_de_roupas, :classificacao_temperatura, :string
  end

  def down
  end
end
