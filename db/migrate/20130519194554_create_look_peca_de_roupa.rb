class CreateLookPecaDeRoupa < ActiveRecord::Migration
  def up
  	create_table :looks_peca_de_roupas do |lp|
  		lp.references :look
  		lp.references :peca_de_roupa
  	end
  end

  def down
  end
end
