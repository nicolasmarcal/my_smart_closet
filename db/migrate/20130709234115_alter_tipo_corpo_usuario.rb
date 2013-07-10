class AlterTipoCorpoUsuario < ActiveRecord::Migration
  def up
  	remove_column :usuarios, :tipo_corpo
  	add_column :usuarios, :tipo_corpo_id, :integer,:references => :tipo_corpos
  end

  def down
  end
end
