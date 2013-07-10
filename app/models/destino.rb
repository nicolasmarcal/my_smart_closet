class Destino < ActiveRecord::Base
	
	attr_accessible :descricao, :ocasiao_id

  TRABALHO = "Trabalho"
  BALADA = "Balada"
  CASAMENTO = "Casamento"
  FORMATURA = "Formatura"
  REUNIAO = "Reuniao"
  AULA = "Aula"

  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  def is_trabalho?
  	descricao == TRABALHO
  end
end
