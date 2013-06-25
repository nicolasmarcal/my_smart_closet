class Destino < ActiveRecord::Base
  TRABALHO = "Trabalho"

  def is_trabalho?
  	descricao == TRABALHO
  end
end
