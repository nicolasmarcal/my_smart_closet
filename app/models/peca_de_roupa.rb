class PecaDeRoupa < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :estilo
  belongs_to :marca
  belongs_to :material
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  belongs_to :tipo_roupa, :class_name => "TipoRoupa", :foreign_key => "tipo_roupa_id"
  has_and_belongs_to_many :looks
  has_and_belongs_to_many :tipo_corpos

  scope :para_ocasiao, lambda{|ocasiao_id| where(:ocasiao_id => ocasiao_id)}
  scope :para_o_tipo_de_corpo, lambda{|tipo_corpo| joins("inner join tipo_roupas on tipo_roupas.id = peca_de_roupas.id")
                                                  .joins("inner join modelo_roupas on tipo_roupas.id = modelo_roupas.tipo_roupa_id")
                                                  .joins("inner join modelo_roupas_tipo_corpos on modelo_roupas_tipo_corpos.modelo_roupa_id = modelo_roupas.id")
                                                  .joins("inner join tipo_corpos on tipo_corpos.id = modelo_roupas_tipo_corpos.tipo_corpo_id")
                                                  .where("tipo_corpos.descricao = ?", tipo_corpo)}
  scope :do_usuario, lambda{|usuario_id| where(:usuario_id => usuario_id)}
  scope :para_o_clima, lambda{ |cod_temperatura| where(:classificacao_temperatura => cod_temperatura) }

end
