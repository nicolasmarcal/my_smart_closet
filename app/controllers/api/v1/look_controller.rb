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
		
		@look.usuario_id = params[:usuario_id]
		@look.destino_id = params[:destino_id]
		@look.ocasiao_id = params[:ocasiao_id]
		@look.temperatura = params[:temperatura]
		@look.humor_usuario = params[:humor]
		@look.vestido = params[:vestido]
		

		if @look.save
			@look.gerar_look
		end

		render :json => @look.to_json
	end
end
