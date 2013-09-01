#encoding:utf-8
load("db/load_cores.rb")
Ocasiao::TIPOS_OCASIAO.keys.each do |key|
	ocasiao = Ocasiao.create!(:descricao => Ocasiao::TIPOS_OCASIAO[key], :tipo_ocasiao => key)
end

TipoRoupa::TIPOS_ROUPA.keys.each do |key|
	tipo_roupa = TipoRoupa.create!(:descricao => TipoRoupa::TIPOS_ROUPA[key], :tipo_roupa => key)
end

load("db/load_modelo_roupas.rb")