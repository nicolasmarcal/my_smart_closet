class PecaDeRoupa < ActiveRecord::Base
  attr_accessible :id_android, :descricao, :usuario_id, :estilo_id, :marca_id, :material_id, :caminho_imagem, :ocasiao_id, :tipo_roupa_id, :classificacao_temperatura, :cor_id, :estampada, :modelo_roupa_id
  belongs_to :usuario
  belongs_to :estilo
  belongs_to :marca
  belongs_to :material
  belongs_to :modelo_roupa, :class_name => "ModeloRoupa", :foreign_key => "modelo_roupa_id"
  belongs_to :tipo_roupa, :class_name => "TipoRoupa", :foreign_key => "tipo_roupa_id"
  belongs_to :cor, :class_name => "Cor", :foreign_key => "cor_id"
  has_and_belongs_to_many :looks
  has_and_belongs_to_many :faixa_temperaturas
  has_many :ocasiaos, :through => :modelo_roupa
  has_many :tipo_corpos, :through => :modelo_roupa

  scope :para_ocasiao, lambda{|ocasiao| joins(:ocasiaos).where("ocasiaos.tipo_ocasiao = ?", ocasiao)}
  
  scope :para_o_tipo_de_corpo, lambda{|tipo_corpo| joins(:tipo_corpos).where("tipo_corpos.id = ?", tipo_corpo)}

  scope :do_usuario, lambda{|usuario_id| where(:usuario_id => usuario_id)}
  
  scope :para_o_clima, lambda{ |temperatura_id| joins(:faixa_temperaturas).
            where("faixa_temperaturas.id" => temperatura_id) }
  
  scope :vestidos, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'VESTIDO'")
  
  scope :sapatos, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'SAPATO'")
  
  scope :com_cor, lambda{ |cor_id| where(:cor_id => cor_id)}
  
  scope :sem_estampa, where(:estampada => false)
  
  scope :do_material, lambda{ |material_id| joins(:material).where("materials.id = ?", material_id)}
  
  scope :casacos, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'CASACO'")
  
  scope :calcas, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'CALCA'")

  scope :camisas, joins(:tipo_roupa).where("tipo_roupas.tipo_roupa = 'CAMISA'")

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

  def self.calcas_jeans
    self.calcas.do_material(Material.jeans)
  end

end
