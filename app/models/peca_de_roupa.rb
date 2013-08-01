class PecaDeRoupa < ActiveRecord::Base
  attr_accessible :id_android, :descricao, :usuario_id, :estilo_id, :marca_id, :material_id, :caminho_imagem, :ocasiao_id, :tipo_roupa_id, :classificacao_temperatura, :cor_id, :estampada, :modelo_roupa_id
  belongs_to :usuario
  belongs_to :estilo
  belongs_to :marca
  belongs_to :material
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  belongs_to :tipo_roupa, :class_name => "TipoRoupa", :foreign_key => "tipo_roupa_id"
  belongs_to :cor, :class_name => "Cor", :foreign_key => "cor_id"
  has_and_belongs_to_many :looks
  has_and_belongs_to_many :tipo_corpos

  scope :para_ocasiao, lambda{|ocasiao_id| where(:ocasiao_id => ocasiao_id)}
  scope :para_o_tipo_de_corpo, lambda{|tipo_corpo| joins("inner join tipo_roupas on tipo_roupas.id = peca_de_roupas.tipo_roupa_id")
                                                  .joins("inner join modelo_roupas on tipo_roupas.id = modelo_roupas.tipo_roupa_id")
                                                  .joins("inner join modelo_roupas_tipo_corpos on modelo_roupas_tipo_corpos.modelo_roupa_id = modelo_roupas.id")
                                                  .joins("inner join tipo_corpos on tipo_corpos.id = modelo_roupas_tipo_corpos.tipo_corpo_id")
                                                  .where("tipo_corpos.descricao = ?", tipo_corpo)}
  scope :do_usuario, lambda{|usuario_id| where(:usuario_id => usuario_id)}
  scope :para_o_clima, lambda{ |cod_temperatura| where(:classificacao_temperatura => cod_temperatura) }
  scope :vestidos, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'VESTIDO'")
  scope :sapatos, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'SAPATO'")
  scope :com_cor, lambda{ |cor_id| where(:cor_id => cor_id)}
  scope :sem_estampa, where(:estampada => false)
  scope :casacos, joins("inner join tipo_roupas on tipo_roupas.id = peca_de_roupas.tipo_roupa_id")
                  .where("tipo_roupas.tipo_roupa = 'CASACO' ")

  def self.tem_estampa?(roupas)
    tem = false
    roupas.each do |roupa|
      unless roupa.nil?
        if roupa.estampada?
          tem = true
        end
      end
    end
    tem
  end

  def self.tem_vestido?(roupas)
    tem = false
    roupas.each do |roupa|
      if roupa.tipo_roupa.vestido?
        tem = true
      end
    end
    tem
  end

  def self.menos_usada(roupas)
    usadas = []
    roupas.each do |roupa|
      usadas << [roupa, roupa.looks.count]
    end
    usadas.sort_by { |i| i[1] }.first
  end

end
