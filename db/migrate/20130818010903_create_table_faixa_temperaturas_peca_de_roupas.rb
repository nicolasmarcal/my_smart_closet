class CreateTableFaixaTemperaturasPecaDeRoupas < ActiveRecord::Migration
  def up
    create_table :faixa_temperaturas_peca_de_roupas do |t|
      t.references :faixa_temperatura
      t.references :peca_de_roupa
    end
    remove_column :peca_de_roupas, :classificacao_temperatura
  end

  def down
  end
end
