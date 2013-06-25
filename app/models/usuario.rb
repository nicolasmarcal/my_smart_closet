class Usuario < ActiveRecord::Base
  belongs_to :cor_cabelo_id
  belongs_to :cor_olhos_id
  attr_accessible :altura, :data_nasc, :email, :id_android, :nome, :peso, :senha
end
