require 'ruleby'
class Look < ActiveRecord::Base
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => "usuario_id"
  belongs_to :destino, :class_name => "Destino", :foreign_key => "destino_id"
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  has_and_belongs_to_many :peca_de_roupas

  def gerar_look
  	@roupas = PecaDeRoupa.scoped
  	@roupas = @roupas.para_o_tipo_de_corpo self.usuario.tipo_corpo
  	@roupas = @roupas.para_ocasiao get_ocasiao

  	self.usuario.carregar_importancias_look.each do |importancia|
  		case importancia
  		when "temperatura"
  			#TODO
  		when "humor"
  			#TODO
  		end
  	end
  end

  def get_ocasiao
  	if self.ocasiao.is_trabalho?
  		self.usuario.ocasiao_trabalho
  	else
  		self.destino.ocasiao
  		
  	end
  end

end
