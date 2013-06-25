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
end
