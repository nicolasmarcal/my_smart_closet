class TipoCorpo < ActiveRecord::Base
  has_and_belongs_to_many :modelo_roupas
  has_many :usuarios
end
