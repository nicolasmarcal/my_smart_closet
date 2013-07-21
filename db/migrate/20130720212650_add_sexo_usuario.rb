class AddSexoUsuario < ActiveRecord::Migration
  def up
  	add_column :usuarios, :sexo, :string
  end

  def down
  end
end
