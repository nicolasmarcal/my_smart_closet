class AddTipoCorpoUsuario < ActiveRecord::Migration
  def up
  	add_column :usuarios, :tipo_corpo, :string
  end

  def down
  end
end
