class PecaDeRoupa < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :estilo
  belongs_to :marca
  belongs_to :material
  has_and_belongs_to_many :looks
end
