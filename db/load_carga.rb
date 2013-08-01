#encoding:utf-8
usuario = Usuario.create!(
		:id_android => 1,
		:nome => "Mônica",
		:email => "monica@teste.com",
		:senha => "123",
		:data_nasc => Date.parse("19/05/1965"),
		:ocasiao_trabalho => Ocasiao.where(:tipo_ocasiao => "FORMAL").first,
		:importancia_temperatura => 10,
		:importancia_humor => 20,
		:tipo_corpo => TipoCorpo.where(:descricao => "Ampulheta").first,
		:sexo => "F"
	)

roupas = PecaDeRoupa.create!([{
		:id_android => 1, 
		:descricao => "Vestido",
		:ocasiao_id => Ocasiao.where(:tipo_ocasiao => "FORMAL").first.id,
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("VESTIDO").id,
		:classificacao_temperatura => FaixaTemperatura::NORMAL,
		:cor_id => Cor.find(2).id,
		:estampada => true,
		:modelo_roupa_id => ModeloRoupa.find_by_descricao("Vestido Alfaiataria").id
	},{
		:id_android => 1, 
		:descricao => "Sapatilha que gosto",
		:ocasiao_id => Ocasiao.where(:tipo_ocasiao => "FORMAL").first.id,
		:tipo_roupa_id => TipoRoupa.find_by_tipo_roupa("SAPATO").id,
		:classificacao_temperatura => FaixaTemperatura::NORMAL,
		:cor_id => Cor.find(4).id,
		:estampada => true,
		:modelo_roupa_id => ModeloRoupa.find_by_descricao("Sapatilha").id
	}])

roupas.each do |roupa|
	usuario.roupas << roupa
end

faixas_temperatura = FaixaTemperatura.create!([{
		:classificacao_temperatura => FaixaTemperatura::MUITO_FRIO,
		:faixa_min => 0.0,
		:faixa_max => 7.0
	},{
		:classificacao_temperatura => FaixaTemperatura::FRIO,
		:faixa_min => 7.1,
		:faixa_max => 17.0
	},{
		:classificacao_temperatura => FaixaTemperatura::NORMAL,
		:faixa_min => 17.1,
		:faixa_max => 25.0
	},{
		:classificacao_temperatura => FaixaTemperatura::QUENTE,
		:faixa_min => 25.1,
		:faixa_max => 33.0
	},{
		:classificacao_temperatura => FaixaTemperatura::MUITO_QUENTE,
		:faixa_min => 33.1,
		:faixa_max => 47.0
	},])

faixas_temperatura.each do |faixa|
	usuario.faixa_temperaturas << faixa
end