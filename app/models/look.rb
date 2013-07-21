require 'ruleby'
class Look < ActiveRecord::Base
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => "usuario_id"
  belongs_to :destino, :class_name => "Destino", :foreign_key => "destino_id"
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  has_and_belongs_to_many :peca_de_roupas
  belongs_to :faixa_temperatura, :class_name => "FaixaTemperatura"


  def gerar_look
  	@roupas = PecaDeRoupa.scoped
  	@roupas = @roupas.para_o_tipo_de_corpo self.usuario.tipo_corpo.descricao
  	@roupas = @roupas.para_ocasiao get_ocasiao

  	self.usuario.carregar_importancias_look.each do |importancia|
  		case importancia
  		when "temperatura"
  			@roupas = PecaDeRoupa.find(@roupas.collect{ |r| r.id }).para_o_clima self.usuario.get_faixa_temperatura(self.temperatura)
  		when "humor"
  			@roupas = PecaDeRoupa.find(@roupas.collect{ |r| r.id }).para_humor self.humor_usuario
  		end
  	end

    if self.usuario.sexo = "F"
      
    else

    end
  end

  def get_ocasiao
    self.ocasiao.is_trabalho? ? self.usuario.ocasiao_trabalho : self.destino.ocasiao
  end

end
