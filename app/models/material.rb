class Material < ActiveRecord::Base
  attr_accessible :descricao

  def self.jeans
    Material.find_by_descricao("Jeans")
  end
end
