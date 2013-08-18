class Ocasiao < ActiveRecord::Base
  has_many :usuarios
  has_many :destinos

  TIPOS_OCASIAO = {
    "FORMAL" => "Formal",
    "CASUAL" => "Casual",
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
