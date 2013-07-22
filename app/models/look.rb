require 'ruleby'
class Look < ActiveRecord::Base
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => "usuario_id"
  belongs_to :destino, :class_name => "Destino", :foreign_key => "destino_id"
  belongs_to :ocasiao, :class_name => "Ocasiao", :foreign_key => "ocasiao_id"
  has_and_belongs_to_many :peca_de_roupas
  belongs_to :faixa_temperatura, :class_name => "FaixaTemperatura"


  def gerar_look
  	@roupas = PecaDeRoupa.scoped
    @roupas = @roupas.do_usuario self.usuario
  	@roupas = @roupas.para_o_tipo_de_corpo self.usuario.tipo_corpo.descricao
  	@roupas = @roupas.para_ocasiao get_ocasiao
    @composicao = []
    @temperatura = self.usuario.get_faixa_temperatura(self.temperatura)
  	self.usuario.carregar_importancias_look.each do |importancia|
  		case importancia
  		when "temperatura"
  			@roupas = PecaDeRoupa.where(:id => @roupas.collect{ |r| r.id }).para_o_clima @temperatura
  		when "humor"
  			@roupas = PecaDeRoupa.where(:id => @roupas.collect{ |r| r.id }).para_humor self.humor_usuario
  		end
  	end

    if self.usuario.sexo = "F"
      if self.vestido? and PecaDeRoupa.tem_vestido?(@roupas)
        @composicao << PecaDeRoupa.menos_usada(PecaDeRoupa.vestidos.where(:id => @roupas.collect{ |r| r.id }))
        @cores = Cor.cores_harmonicas @composicao.first.cor
        @composicao << PecaDeRoupa.menos_usada(PecaDeRoupa.sapatos.where(:id => @roupas.collect{ |r| r.id }).com_cor(@cores.collect{|c| c.id}))
        if @temperatura == FaixaTemperatura::FRIO || @temperatura == FaixaTemperatura::MUITO_FRIO || @temperatura == FaixaTemperatura::NORMAL
          if PecaDeRoupa.tem_estampa?(@composicao)
            @composicao << PecaDeRoupa.menos_usada(PecaDeRoupa.casacos.where(:id => @roupas.collect{ |r| r.id }).com_cor(@cores.collect{|c| c.id}))
          else
            @composicao << PecaDeRoupa.menos_usada(PecaDeRoupa.casacos.where(:id => @roupas.collect{ |r| r.id }).com_cor(@cores.collect{|c| c.id}).sem_estampa)
          end
        end
      else
        
      end
    else

    end

    self.peca_de_roupas = @composicao
  end

  def get_ocasiao
    self.ocasiao.is_trabalho? ? self.usuario.ocasiao_trabalho : self.destino.ocasiao
  end

end
