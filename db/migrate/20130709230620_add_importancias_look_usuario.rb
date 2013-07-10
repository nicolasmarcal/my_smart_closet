class AddImportanciasLookUsuario < ActiveRecord::Migration
  def up
  	add_column :usuarios, :importancia_temperatura, :integer
  	add_column :usuarios, :importancia_humor, :integer
  end

  def down
  end
end
