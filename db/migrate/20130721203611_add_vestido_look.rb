class AddVestidoLook < ActiveRecord::Migration
  def up
  	add_column :looks, :vestido, :boolean
  end

  def down
  end
end
