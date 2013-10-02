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

#[[1, "Mini Saia"], 
# [2, "Saia Reta"], 
# [3, "Saia Balonê"], 
# [4, "Saia Envelope"], 
# [5, "Saia de Pregas"], 
# [6, "Calça Reta"], 
# [7, "Calça Flair"], 
# [8, "Calça Skinny"], 
# [9, "Calça Boyfriend"], 
# [10, "Short"], 
# [11, "Camisa"], 
# [12, "Camiseta"], 
# [13, "Regata"], 
# [14, "Bata"], 
# [15, "Blusa Ombro Caído"], 
# [16, "Blusa Tomara-Que-Caia"], 
# [17, "Camisa Tradicional"], 
# [18, "Bota de Montaria"], 
# [19, "Sapatilha"], 
# [20, "Scarpin"], 
# [21, "Tênis"], 
# [22, "Vestido Longo"], 
# [23, "Vestido Balonê"], 
# [24, "Vestido Envelope"], 
# [25, "Vestido Tubinho"], 
# [26, "Blazer"], 
# [27, "Jaqueta de Couro"]]

roupas = PecaDeRoupa.create!([
	{
		:id_android => 1, 
		:descricao => "Regata da hering",
		:tipo_roupa_id => ModeloRoupa.find(13).tipo_roupa_id,
		:cor_id => 30,
		:estampada => false,
		:modelo_roupa_id => 13,
		:caminho_imagem => "http://moda.culturamix.com/blog/wp-content/gallery/regata-branca-feminina/foto-regata-feminina-04.jpg"
	}{
		:id_android => 2, 
		:descricao => "Regata Hering",
		:tipo_roupa_id => ModeloRoupa.find(13).tipo_roupa_id,
		:cor_id => 1,
		:estampada => false,
		:modelo_roupa_id => 13,
		:caminho_imagem => "http://www.tudoclaro.com/wp-content/uploads/2012/12/Regata-feminina-imagem-1.jpg"
	},{
		:id_android => 3, 
		:descricao => "Camiseta Estampada",
		:tipo_roupa_id => ModeloRoupa.find(12).tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => 12,
		:caminho_imagem => "http://www.animatoons.com.br/wp-content/uploads/2008/08/camisetaadormecida.jpg"
	},{
		:id_android => 4, 
		:descricao => "Camisa",
		:tipo_roupa_id => ModeloRoupa.find(11).tipo_roupa_id,
		:cor_id => 5,
		:estampada => true,
		:modelo_roupa_id => 11,
		:caminho_imagem => "http://www.gasdacoca.com/img/fotos/camisa%20dudalina%20feminina%202.jpg"
	},{
		:id_android => 5, 
		:descricao => "Camisa",
		:tipo_roupa_id => ModeloRoupa.find(11).tipo_roupa_id,
		:cor_id => 6,
		:estampada => false,
		:modelo_roupa_id => 11,
		:caminho_imagem => "http://www.chiceelegante.com.br/arquivos/ids/198629_10/Blusa-feminina-renda-1003_.jpg"
	},{
		:id_android => 6, 
		:descricao => "Jaqueta de couro",
		:tipo_roupa_id => ModeloRoupa.find(27).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 27,
		:caminho_imagem => "http://3.bp.blogspot.com/-bLOwIHPh3H8/TaMU6KP59aI/AAAAAAAAYjI/sZns7QodTN0/s1600/jaqueta-de-couro-feminina-4.jpg"
	},{
		:id_android => 7, 
		:descricao => "Blazer Azul Caneta",
		:tipo_roupa_id => ModeloRoupa.find(26).tipo_roupa_id,
		:cor_id => 6,
		:estampada => false,
		:modelo_roupa_id => 26,
		:caminho_imagem => "http://www.camisariarg.com/media/catalog/product/cache/1/image/500x500/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer-feminino-colors-04.jpg"
	},{
		:id_android => 8, 
		:descricao => "Blazer preto",
		:tipo_roupa_id => ModeloRoupa.find(26).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 26,
		:caminho_imagem => "http://www.roupasocial.net/files/2012/02/blazer-acinturado.jpg"
	},{
		:id_android => 9, 
		:descricao => "Calça reta",
		:tipo_roupa_id => ModeloRoupa.find(6).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 6,
		:caminho_imagem => "http://i.s8.com.br/images/fashion/cover/img2/1979302.jpg"
	},{
		:id_android => 10,
		:descricao => "Calça estampada",
		:tipo_roupa_id => ModeloRoupa.find(6).tipo_roupa_id,
		:cor_id => 13,
		:estampada => true,
		:modelo_roupa_id => 6,
		:caminho_imagem => "http://imagens.paraisofeminino.com.br/AM/farfetch/106005_02.jpg"
	},{
		:id_android => 11, 
		:descricao => "Calça Boyfriend",
		:tipo_roupa_id => ModeloRoupa.find(9).tipo_roupa_id,
		:cor_id => 25,
		:estampada => false,
		:modelo_roupa_id => 9,
		:caminho_imagem => "http://www.dresstoshop.com.br/media/catalog/product/cache/13/image/9df78eab33525d08d6e5fb8d27136e95/r/e/ref5750.jpg"
	},{
		:id_android => 12, 
		:descricao => "Calça Skinny",
		:tipo_roupa_id => ModeloRoupa.find(8).tipo_roupa_id,
		:cor_id => 17,
		:estampada => false,
		:modelo_roupa_id => 8,
		:caminho_imagem => "http://lojavirtual.lojasrenner.com.br/images/variant/large/528041812-19-1650%20TP_z_1.jpg"
	},{
		:id_android => 13, 
		:descricao => "Calça Skinny",
		:tipo_roupa_id => ModeloRoupa.find(8).tipo_roupa_id,
		:cor_id => 27,
		:estampada => false,
		:modelo_roupa_id => 8,
		:caminho_imagem => "http://bimg2.mlstatic.com/calca-jeans-american-eagle-feminina-skinny-stretch-tam-38_MLB-F-4143848418_042013.jpg"
	},{
		:id_android => 14, 
		:descricao => "Calça Flair",
		:tipo_roupa_id => ModeloRoupa.find(7).tipo_roupa_id,
		:cor_id => 17,
		:estampada => false,
		:modelo_roupa_id => 7,
		:caminho_imagem => "http://d2v00stn2h670x.cloudfront.net/produto/707/full/calca-flare-a053-260707-244611-full.jpg"
	},{
		:id_android => 15, 
		:descricao => "Mini Saia",
		:tipo_roupa_id => ModeloRoupa.find(1).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 1,
		:caminho_imagem => "http://bimg2.mlstatic.com/mini-saia-cintura-alta-com-aplicaco-de-tachasspike_MLB-F-3727441871_012013.jpg"
	},{
		:id_android => 16, 
		:descricao => "Saia Reta",
		:tipo_roupa_id => ModeloRoupa.find(2).tipo_roupa_id,
		:cor_id => 15,
		:estampada => false,
		:modelo_roupa_id => 2,
		:caminho_imagem => "http://jeorane.files.wordpress.com/2008/12/saia1.jpg"
	},{
		:id_android => 17, 
		:descricao => "Saia Reta branca",
		:tipo_roupa_id => ModeloRoupa.find(2).tipo_roupa_id,
		:cor_id => 30,
		:estampada => false,
		:modelo_roupa_id => 2,
		:caminho_imagem => "http://encontrodeamigas.files.wordpress.com/2011/05/saia_reta2.jpg"
	},{
		:id_android => 18, 
		:descricao => "Saia Envelope",
		:tipo_roupa_id => ModeloRoupa.find(4).tipo_roupa_id,
		:cor_id => 19,
		:estampada => false,
		:modelo_roupa_id => 4,
		:caminho_imagem => "http://4.bp.blogspot.com/-37edlXH2d4Y/UNuAtBAuCLI/AAAAAAAAA90/qmTLX-596nc/s1600/saia+envelope2.jpg"
	},{
		:id_android => 19, 
		:descricao => "Saia com laço",
		:tipo_roupa_id => ModeloRoupa.find(4).tipo_roupa_id,
		:cor_id => 8,
		:estampada => false,
		:modelo_roupa_id => 4,
		:caminho_imagem => "http://3.bp.blogspot.com/-qgAp6yTpYGY/UEFA2R4NLxI/AAAAAAAAAFw/H_KKS7T8yxM/s400/saia-envelope2.jpg"
	},{
		:id_android => 20, 
		:descricao => "Saia Pregas",
		:tipo_roupa_id => ModeloRoupa.find(5).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 5,
		:caminho_imagem => "http://1.bp.blogspot.com/-kLqYUP-w4qk/UZj89xwBT6I/AAAAAAAAIDw/kC3yBax1xTA/s1600/00026906_Ampliada.jpg"
	},{
		:id_android => 21, 
		:descricao => "Ombro Caido com caveira",
		:tipo_roupa_id => ModeloRoupa.find(15).tipo_roupa_id,
		:cor_id => 30,
		:estampada => true,
		:modelo_roupa_id => 15,
		:caminho_imagem => "https://qol.s3.amazonaws.com/products/7732-79fc255e0cbbcbc2e23252d2d3c4ad5f.jpg"
	},{
		:id_android => 22, 
		:descricao => "Ombro Caído Vermelha",
		:tipo_roupa_id => ModeloRoupa.find(15).tipo_roupa_id,
		:cor_id => 1,
		:estampada => false,
		:modelo_roupa_id => 15,
		:caminho_imagem => "http://d3cznlo0697e08.cloudfront.net/products/7732-0315336fd3c96bfc806c325f9fb6485d.jpg"
	},{
		:id_android => 23, 
		:descricao => "Bata",
		:tipo_roupa_id => ModeloRoupa.find(14).tipo_roupa_id,
		:cor_id => 18,
		:estampada => false,
		:modelo_roupa_id => 14,
		:caminho_imagem => "http://www.sugiki.com.br/images/produtos/15_09_720.jpg"
	},{
		:id_android => 24, 
		:descricao => "Bota Montaria",
		:tipo_roupa_id => ModeloRoupa.find(18).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 18,
		:caminho_imagem => "http://onlyblack.fplace.com.br/image/stores/cache/140/data/127bota-montaria-em-couro0-800x800.jpg"
	},{
		:id_android => 25, 
		:descricao => "Tomara-Que-Caia",
		:tipo_roupa_id => ModeloRoupa.find(16).tipo_roupa_id,
		:cor_id => 3,
		:estampada => false,
		:modelo_roupa_id => 16,
		:caminho_imagem => "http://1.bp.blogspot.com/-lN-L7FVZNmM/UGtbAnYe1HI/AAAAAAAAAUo/tswguWYZWvo/s1600/Item-10329-500.jpg"
	},{
		:id_android => 26, 
		:descricao => "Sapatilha de oncinha",
		:tipo_roupa_id => ModeloRoupa.find(19).tipo_roupa_id,
		:cor_id => 1,
		:estampada => true,
		:modelo_roupa_id => 19,
		:caminho_imagem => "http://cea.com.br.s3.amazonaws.com/imagem/produtocor/ampliada/sapatilha-ampliada-10789.jpg"
	},{
		:id_android => 27, 
		:descricao => "Sapatilha Vermelha",
		:tipo_roupa_id => ModeloRoupa.find(19).tipo_roupa_id,
		:cor_id => 1,
		:estampada => false,
		:modelo_roupa_id => 19,
		:caminho_imagem => "http://cea.com.br.s3.amazonaws.com/imagem/produtocor/ampliada/sapatilha-ampliada-10802a1.jpg"
	},{
		:id_android => 28, 
		:descricao => "Sapatilha preta",
		:tipo_roupa_id => ModeloRoupa.find(19).tipo_roupa_id,
		:cor_id => 28,
		:estampada => false,
		:modelo_roupa_id => 19,
		:caminho_imagem => "http://www.gasdacoca.com/img/fotos/sapatilha%20preta%205.jpg"
	},{
		:id_android => 29, 
		:descricao => "Scarpin",
		:tipo_roupa_id => ModeloRoupa.find(20).tipo_roupa_id,
		:cor_id => 6,
		:estampada => false,
		:modelo_roupa_id => 20,
		:caminho_imagem => "http://images04.olx.com.br/ui/15/28/98/1361284069_483882098_1-Fotos-de--Scarpin-Schutz-Anil.jpg"
	},{
		:id_android => 30, 
		:descricao => "Scarpin Vinho",
		:tipo_roupa_id => ModeloRoupa.find(20).tipo_roupa_id,
		:cor_id => 17,
		:estampada => false,
		:modelo_roupa_id => 20,
		:caminho_imagem => "http://www.calcados.com/files/2013/04/scarpin-schutz.jpg"
	},{
		:id_android => 31, 
		:descricao => "Vestido envelope colorido",
		:tipo_roupa_id => ModeloRoupa.find(24).tipo_roupa_id,
		:cor_id => 28,
		:estampada => true,
		:modelo_roupa_id => 24,
		:caminho_imagem => "http://teusvestidos.files.wordpress.com/2010/11/dress1.jpg"
	},{
		:id_android => 32, 
		:descricao => "Tenis Lona",
		:tipo_roupa_id => ModeloRoupa.find(21).tipo_roupa_id,
		:cor_id => 30,
		:estampada => false,
		:modelo_roupa_id => 21,
		:caminho_imagem => "http://paneladagabi.files.wordpress.com/2011/12/1980_05563.jpg"
	},{
		:id_android => 33, 
		:descricao => "Vestido cinza",
		:tipo_roupa_id => Modelo.find(24).tipo_roupa_id,
		:cor_id => 25,
		:estampada => false,
		:modelo_roupa_id => 24,
		:caminho_imagem => "http://www.styleshop.com.br/wp/wp-content/uploads/2012/03/vestido-seda-dvf-cinza.jpg"
	},{
		:id_android => 34, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 35, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 36, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 37, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 38, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 39, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 40, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 41, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 42, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 43, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 44, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 45, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 46, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 47, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 48, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 49, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 50, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 51, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},{
		:id_android => 52, 
		:descricao => "Neque porro quisquam est qui dolorem",
		:tipo_roupa_id => modelo.tipo_roupa_id,
		:cor_id => Cor.find(rand(1..Cor.all.count)).id,
		:estampada => true,
		:modelo_roupa_id => modelo.id,
		:caminho_imagem => ""
	},
])

roupas.each do |roupa|
	usuario.roupas << roupa
end
