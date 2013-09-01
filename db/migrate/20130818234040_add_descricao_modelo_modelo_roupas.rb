class AddDescricaoModeloModeloRoupas < ActiveRecord::Migration
  def up
    add_column :modelo_roupas, :descricao_modelo, :string
  end

  def down
  end
end
