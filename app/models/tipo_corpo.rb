class TipoCorpo < ActiveRecord::Base
  has_and_belongs_to_many :peca_de_roupas
  has_many :usuarios
end
