class Cor < ActiveRecord::Base
	attr_accessible :descricao, :tipo_cor, :rgb, :proxima_cor_id
  has_one :cor_anterior, :class_name => "Cor", :foreign_key => :proxima_cor_id
  belongs_to :proxima_cor, :class_name => "Cor", :foreign_key => :proxima_cor_id

  scope :de_roupa, where(:tipo_cor => "Roupa")
  scope :preto, where(:descricao => "Preto")
  scope :branco, where(:descricao => "Branco")

  def self.cores_harmonicas(cor_param)
  	cores = []
  	if cor_param.proxima_cor.nil?
  		cores = Cor.order("id DESC").limit(5)
  	elsif cor_param.cor_anterior.nil?
  		cores = Cor.limit(5)
  	else
  		cores << cor_param
  		cores << cor_param.proxima_cor unless cor_param.proxima_cor.nil?
  		cores << cor_param.proxima_cor.proxima_cor unless cor_param.proxima_cor.proxima_cor.nil?
  		cores << cor_param.cor_anterior unless cor_param.cor_anterior.nil?
  		cores << cor_param.cor_anterior.cor_anterior unless cor_param.cor_anterior.cor_anterior.nil?
  	end
  	cores << Cor.de_roupa.preto.first
  	cores << Cor.de_roupa.branco.first

  	cores
  end
end
