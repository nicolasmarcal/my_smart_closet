class TipoRoupa < ActiveRecord::Base
  attr_accessible :descricao, :tipo_roupa
  has_many :modelo_roupas, :class_name => "ModeloRoupa"
  has_many :peca_de_roupas
end
