require 'ruleby'
class Api::V1::LookController < ApplicationController
	include Ruleby

	def index
		@look = Look.new
		@look.destino = Destino.first
		puts @look.destino_id
		engine :engine do |e|
			LookRulebook.new(e).rules
			e.assert @look
			e.match
		end

		render :json => @look.to_json
	end

	def gerar_look
		@look = Look.new
		
		@look.usuario_id = Usuario.find_by_email(params[:email]).try(:id)
		@look.ocasiao_id = params[:ocasiao_id]
		@look.temperatura = params[:temperatura]
		#@look.humor_usuario = params[:humor]
		@look.vestido = (params[:vestido] == "true")


		if @look.save
			@look.gerar_look
		end

		@result = { :look => @look.id, :roupas => [] }

		@look.peca_de_roupas.each do |roupa|
			@result[:roupas] << { :id_android => roupa.id_android,
														:caminho_imagem => roupa.caminho_imagem,
														:modelo => roupa.modelo_roupa.descricao,
														:cor => roupa.cor.descricao }
		end
		render :json => @result.to_json
	end

	def show
		
	end
end
