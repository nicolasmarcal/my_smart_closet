class Ocasiao < ActiveRecord::Base
  has_many :usuarios
  has_many :destinos

  attr_accessible :descricao, :tipo_ocasiao

  def is_trabalho?
  	!self.descricao["Trabalho"].nil?
  end
end
