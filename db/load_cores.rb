#encoding:utf-8
cores = Cor.create!([{
		:descricao => "Vermelho",
		:tipo_cor => "Roupa",
		:rgb => "#FF3068"
	},{
		:descricao => "Laranja",
		:tipo_cor => "Roupa",
		:rgb => "#FFAA05"
	},{
		:descricao => "Amarelo",
		:tipo_cor => "Roupa",
		:rgb => "#FEFB16"
	},{
		:descricao => "Verde Água",
		:tipo_cor => "Roupa",
		:rgb => "#00F0C3"
	},{
		:descricao => "Azul Claro",
		:tipo_cor => "Roupa",
		:rgb => "#23A4FF"
	},{
		:descricao => "Azul Caneta",
		:tipo_cor => "Roupa",
		:rgb => "#006EB9"
	},{
		:descricao => "Azul Bebê",
		:tipo_cor => "Roupa",
		:rgb => "#B6E6FA"
	},{
		:descricao => "Rosa Bebê",
		:tipo_cor => "Roupa",
		:rgb => "#FCD3F5"
	},{
		:descricao => "Amarelo Claro",
		:tipo_cor => "Roupa",
		:rgb => "#FFF3C3"
	},{
		:descricao => "Verde Claro",
		:tipo_cor => "Roupa",
		:rgb => "#C4FFC5"
	},{
		:descricao => "Gelo",
		:tipo_cor => "Roupa",
		:rgb => "#F4F2E6"
	},{
		:descricao => "Bege Claro",
		:tipo_cor => "Roupa",
		:rgb => "#ECE3D2"
	},{
		:descricao => "Bege",
		:tipo_cor => "Roupa",
		:rgb => "#9D8F74"
	},{
		:descricao => "Marrom",
		:tipo_cor => "Roupa",
		:rgb => "#4C3513"
	},{
		:descricao => "Camelo",
		:tipo_cor => "Roupa",
		:rgb => "#A98030"
	},{
		:descricao => "Laranja Escuro",
		:tipo_cor => "Roupa",
		:rgb => "#DD6D17"
	},{
		:descricao => "Vinho",
		:tipo_cor => "Roupa",
		:rgb => "#A62819"
	},{
		:descricao => "Roxo",
		:tipo_cor => "Roupa",
		:rgb => "#672742"
	},{
		:descricao => "Azul Petróleo",
		:tipo_cor => "Roupa",
		:rgb => "#2C385E"
	},{
		:descricao => "Azul Esverdeado",
		:tipo_cor => "Roupa",
		:rgb => "#2F5B5E"
	},{
		:descricao => "Verde",
		:tipo_cor => "Roupa",
		:rgb => "#305E37"
	},{
		:descricao => "Verde Musgo",
		:tipo_cor => "Roupa",
		:rgb => "#535F2F"
	},{
		:descricao => "Verde Oliva",
		:tipo_cor => "Roupa",
		:rgb => "#8F9F70"
	},{
		:descricao => "Cinza Claro",
		:tipo_cor => "Roupa",
		:rgb => "#B3B5A0"
	},{
		:descricao => "Cinza",
		:tipo_cor => "Roupa",
		:rgb => "#6B6D60"
	},{
		:descricao => "Cinza Escuro",
		:tipo_cor => "Roupa",
		:rgb => "#343530"
	},{
		:descricao => "Chumbo",
		:tipo_cor => "Roupa",
		:rgb => "#1B1B19"
	},{
		:descricao => "Preto",
		:tipo_cor => "Roupa",
		:rgb => "#010101"
	},{
		:descricao => "Cinza Médio",
		:tipo_cor => "Roupa",
		:rgb => "#5E5E5E"
	},{
		:descricao => "Branco",
		:tipo_cor => "Roupa",
		:rgb => "#FFFFFF"
	}])

	cores.each_with_index do |cor, index|
		cor.update_attribute(:proxima_cor_id, cores[index + 1].id) if index < cores.size and !cores[index+1].nil?
	end

	Cor.last.update_attribute :proxima_cor_id, Cor.first.id