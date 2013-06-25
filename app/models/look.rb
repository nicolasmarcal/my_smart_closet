class Look < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :destino
  belongs_to :ocasiao
  has_and_belongs_to_many :peca_de_roupas
end
