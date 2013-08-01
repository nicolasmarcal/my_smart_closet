#encoding:utf-8
load("db/load_cores.rb")
ocasioes = Ocasiao.create!([{
		:descricao => "Formal",
		:tipo_ocasiao => "FORMAL"
	},{
		:descricao => "Casual",
		:tipo_ocasiao => "CASUAL"
	},{
		:descricao => "Esportiva",
		:tipo_ocasiao => "ESPORTE"
	},{
		:descricao => "Despojada",
		:tipo_ocasiao => "DESPOJADA"
	}])

destinos = Destino.create!([{
		:descricao => "Trabalho",
		:ocasiao_id => nil
	},{
		:descricao => "Faculdade",
		:ocasiao_id => Ocasiao.find_by_tipo_ocasiao("CASUAL").id
	},{
		:descricao => "Academia",
		:ocasiao_id => Ocasiao.find_by_tipo_ocasiao("ESPORTE").id
	},{
		:descricao => "Reunião de Trabalho",
		:ocasiao_id => nil
	},{
		:descricao => "Balada",
		:ocasiao_id => Ocasiao.find_by_tipo_ocasiao("CASUAL").id
	},{
		:descricao => "Jantar Romântico",
		:ocasiao_id => Ocasiao.find_by_tipo_ocasiao("FORMAL").id
	},{
		:descricao => "Happy Hour",
		:ocasiao_id => Ocasiao.find_by_tipo_ocasiao("CASUAL").id
	}])

tipos_corpo = TipoCorpo.create!([{
	:descricao => "Ampulheta"
	},{
	:descricao => "Oval"
	},{
	:descricao => "Retângulo"
	},{
	:descricao => "Pêra"
	},{
	:descricao => "Triângulo"
	}])

TipoRoupa::TIPOS_ROUPA.keys.each do |key|
	tipo_roupa = TipoRoupa.create!(:descricao => TipoRoupa::TIPOS_ROUPA[key], :tipo_roupa => key)
end

modelos_roupa = ModeloRoupa.create!([{
		:descricao => "Vestido Casaco",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("VESTIDO").id
	},{
		:descricao => "Vestido de Festa",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("VESTIDO").id
	},{
		:descricao => "Vestido Tubinho",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("VESTIDO").id
	},{
		:descricao => "Vestido Alfaiataria",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("VESTIDO").id
	},{
		:descricao => "Bota Montaria",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	},{
		:descricao => "Scarpin",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	},{
		:descricao => "Snipper",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	},{
		:descricao => "Sapatilha",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	},{
		:descricao => "Bota Montaria",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	},{
		:descricao => "Tênis",
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id
	}])

modelos_roupa.each do |modelo_roupa|
	TipoCorpo.all.each do |tipo_corpo|
		modelo_roupa.tipo_corpos << tipo_corpo
	end
end