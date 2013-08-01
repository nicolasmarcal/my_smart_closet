class FaixaTemperatura < ActiveRecord::Base
  belongs_to :usuario, :class_name => "Usuario"
  attr_accessible :classificacao_temperatura, :faixa_max, :faixa_min
  MUITO_QUENTE = "MUITO_QUENTE"
  QUENTE = "QUENTE"
  NORMAL = "NORMAL"
  FRIO = "FRIO"
  MUITO_FRIO = "MUITO_FRIO"
end
