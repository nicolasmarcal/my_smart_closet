require 'ruleby'

class LookRulebook < Ruleby::Rulebook

	def rules
		rule :lookTrabalhoFormal, [Look, :look, m.destino_id == 1, m.ocasiao_id == 1] do |v|
			v[:look].humor_usuario = "Vai pro trabalho"
		end

	end
end