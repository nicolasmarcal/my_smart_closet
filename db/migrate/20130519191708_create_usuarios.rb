class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :id_android
      t.string :nome
      t.string :email
      t.string :senha
      t.datetime :data_nasc
      t.integer :cor_cabelo_id
      t.integer :cor_olhos_id
      t.decimal :peso, :precision => 10, :scale => 2
      t.decimal :altura, :precision => 10, :scale => 2

      t.timestamps
    end
    add_index :usuarios, :cor_cabelo_id, :references => :cors
    add_index :usuarios, :cor_olhos_id, :references => :cors
  end
end
