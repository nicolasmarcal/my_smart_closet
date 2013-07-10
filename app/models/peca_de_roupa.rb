class PecaDeRoupa < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :estilo
  belongs_to :marca
  belongs_to :material
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  has_and_belongs_to_many :looks
  has_and_belongs_to_many :tipo_corpos

  scope :para_ocasiao, lambda{|ocasiao_id| where(:ocasiao_id => ocasiao_id)}
  #TODO scope :para_o_tipo_de_corpo, lambda{|tipo_corpo| where(:tipo_corpo => tipo_corpo)}
  scope :do_usuario, lambda{|usuario_id| where(:usuario_id => usuario_id)}

end
