#encoding:utf-8
class Usuario < ActiveRecord::Base
  attr_accessible :id_android, :nome, :email, :senha, :data_nasc, :ocasiao_trabalho, :importancia_temperatura, :importancia_humor, :tipo_corpo, :sexo
  belongs_to :cor_cabelo_id, :class_name => "Cor", :foreign_key => "cor_cabelo_id"
  belongs_to :cor_olhos_id, :class_name => "Cor", :foreign_key => "cor_olhos_id"
  belongs_to :ocasiao_trabalho, :class_name => "Ocasiao", :foreign_key => "ocasiao_trabalho_id"
  belongs_to :tipo_corpo, :class_name => "TipoCorpo", :foreign_key => "tipo_corpo_id"
  has_many :faixa_temperaturas
  has_many :roupas, :class_name => "PecaDeRoupa"

  TIPO_CORPO_AMPULHETA = "Ampulheta"
  TIPO_CORPO_OVAL = "Oval"
  TIPO_CORPO_TRIANGULO = "Triângulo"
  TIPO_CORPO_PERA = "Pêra"
  TIPO_CORPO_RETANGULO = "Retângulo"

  def carregar_importancias_look
  	imp = [
  		[self.importancia_temperatura, "temperatura"],
  		[self.importancia_humor, "humor"]
  	].sort_by {|i| i[0]}.reverse
  end

  def get_faixa_temperatura(temperatura)
    self.faixa_temperaturas.where("? >= faixa_min and ? <= faixa_max", temperatura, temperatura).first.classificacao_temperatura
  end
end
