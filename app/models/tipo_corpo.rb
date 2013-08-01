class TipoCorpo < ActiveRecord::Base
	attr_accessible :descricao
  has_and_belongs_to_many :modelo_roupas
  has_many :usuarios
end
