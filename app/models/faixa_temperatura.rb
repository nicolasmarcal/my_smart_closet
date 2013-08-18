class FaixaTemperatura < ActiveRecord::Base
  belongs_to :usuario, :class_name => "Usuario"
  has_and_belongs_to_many :peca_de_roupas
  
  attr_accessible :classificacao_temperatura, :faixa_max, :faixa_min
  MUITO_QUENTE = "MUITO_QUENTE"
  QUENTE = "QUENTE"
  NORMAL = "NORMAL"
  FRIO = "FRIO"
  MUITO_FRIO = "MUITO_FRIO"
end
