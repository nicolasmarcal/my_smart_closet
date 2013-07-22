#encoding:utf-8
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