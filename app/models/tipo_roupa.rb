#encoding:utf-8
class TipoRoupa < ActiveRecord::Base
  attr_accessible :descricao, :tipo_roupa
  has_many :modelo_roupas, :class_name => "ModeloRoupa"
  has_many :peca_de_roupas

  TIPOS_ROUPA = {
  	"CAMISA" => "Camisa/Camiseta",
  	"CALCA" => "Calça/Saia/Short/Bermuda",
  	"CASACO" => "Casaco",
  	"VESTIDO" => "Vestido",
  	"SAPATO" => "Sapato"
  }
  def vestido?
  	self.descricao == "Vestido"
  end

  def parte_de_baixo?
    self.tipo_roupa == "CALCA"
  end
end
