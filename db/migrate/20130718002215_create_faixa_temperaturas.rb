class CreateFaixaTemperaturas < ActiveRecord::Migration
  def change
    create_table :faixa_temperaturas do |t|
      t.decimal :faixa_min
      t.decimal :faixa_max
      t.string :classificacao_temperatura
      t.references :usuario

      t.timestamps
    end
    change_column :faixa_temperaturas, :faixa_max, :decimal, :precision => 10, :scale => 2
    change_column :faixa_temperaturas, :faixa_min, :decimal, :precision => 10, :scale => 2
    add_index :faixa_temperaturas, :usuario_id
  end
end
