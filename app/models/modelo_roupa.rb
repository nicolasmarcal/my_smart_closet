class ModeloRoupa < ActiveRecord::Base
  attr_accessible :references, :string
  belongs_to :tipo_roupas
  has_and_belongs_to_many :tipo_corpos
end
