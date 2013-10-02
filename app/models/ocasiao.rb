#encoding:utf-8
class Ocasiao < ActiveRecord::Base
  has_many :usuarios
  has_many :destinos
  has_and_belongs_to_many :modelo_roupas

  TIPOS_OCASIAO = {
    "FORMAL" => "Formal Evento",
    "FORMAL_TRABALHO" => "Formal Trabalho",
    "FORMAL_ENTREVISTA" => "Formal Entrevista de Emprego",
    "CASUAL" => "Casual Trabalho",
    "CASUAL_PASSEIO" => "Casual Passeio",
    "CASUAL_TRABALHO" => "Casual Trabalho",
    "CASUAL_BALADA" => "Casual Balada",
    "CASUAL_REUNIAO_FAMILIA" => "Casual Reunião em Família",
    "ESPORTE" => "Esporte",
    "DESPOJADO" => "Despojado"
  }

  attr_accessible :descricao, :tipo_ocasiao

  def is_trabalho?
  	!self.descricao["Trabalho"].nil?
  end

  def is_casual?
    
  end

  def is_despojado?
    
  end
end
