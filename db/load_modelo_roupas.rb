#encoding: utf-8
#tipos de corpo
ampulheta = TipoCorpo.create!(:descricao => "Ampulheta")
oval = TipoCorpo.create!(:descricao => "Oval")
retangulo = TipoCorpo.create!(:descricao => "Retângulo")
pera = TipoCorpo.create!(:descricao => "Pêra")
triangulo = TipoCorpo.create!(:descricao => "Triângulo")

#ocasiao
formal_evento = Ocasiao.find_by_tipo_ocasiao("FORMAL")
formal_trabalho = Ocasiao.find_by_tipo_ocasiao("FORMAL_TRABALHO")
formal_entrevista = Ocasiao.find_by_tipo_ocasiao("FORMAL_ENTREVISTA")
casual_trabalho = Ocasiao.find_by_tipo_ocasiao("CASUAL")
casual_passeio = Ocasiao.find_by_tipo_ocasiao("CASUAL_PASSEIO")

ocasioes = [formal_evento, formal_trabalho, formal_entrevista, casual_trabalho, casual_passeio]

tipos_corpo = [ampulheta, oval, retangulo, pera, triangulo]

#modelos de roupa
calca = TipoRoupa.find_by_tipo_roupa("CALCA")
#calças ~saias

mini_saia = ModeloRoupa.create!(
    :descricao => "Mini Saia",
    :tipo_roupa_id => calca.id
  )

mini_saia.tipo_corpos << ampulheta
mini_saia.tipo_corpos << retangulo
mini_saia.tipo_corpos << triangulo

mini_saia.ocasiaos << casual_passeio

saia_reta = ModeloRoupa.create!(
    :descricao => "Saia Reta",
    :tipo_roupa_id => calca.id
  )

saia_reta.tipo_corpos << ampulheta
saia_reta.tipo_corpos << retangulo
saia_reta.tipo_corpos << triangulo

saia_reta.ocasiaos << formal_trabalho
saia_reta.ocasiaos << formal_entrevista

# saia_evase = ModeloRoupa.create!(
#     :descricao => "Saia Evasê",
#     :tipo_roupa_id => calca.id
#   )

# # todos

# saia_gode = ModeloRoupa.create!(
#     :descricao => "Saia Godê",
#     :tipo_roupa_id => calca.id
#   )

# saia_gode.tipo_corpos << ampulheta
# saia_gode.tipo_corpos << retangulo
# saia_gode.tipo_corpos << triangulo

saia_balone = ModeloRoupa.create!(
    :descricao => "Saia Balonê",
    :tipo_roupa_id => calca.id
  )

saia_balone.tipo_corpos << ampulheta
saia_balone.tipo_corpos << retangulo
saia_balone.tipo_corpos << triangulo

saia_balone.ocasiaos << casual_passeio
saia_balone.ocasiaos << casual_trabalho

# saia_plissada = ModeloRoupa.create!(
#     :descricao => "Saia Plissada",
#     :tipo_roupa_id => calca.id
#   )

#todos

saia_envelope = ModeloRoupa.create!(
    :descricao => "Saia Envelope",
    :tipo_roupa_id => calca.id
  )

saia_envelope.ocasiaos << casual_trabalho
saia_envelope.ocasiaos << casual_passeio

#todos

# saia_tulipa = ModeloRoupa.create!(
#     :descricao => "Saia Tulipa",
#     :tipo_roupa_id => calca.id
#   )

# saia_tulipa.tipo_corpos << ampulheta
# saia_tulipa.tipo_corpos << retangulo
# saia_tulipa.tipo_corpos << triangulo

saia_pregas = ModeloRoupa.create!(
    :descricao => "Saia de Pregas",
    :tipo_roupa_id => calca.id
  )

saia_pregas.ocasiaos << casual_passeio
#todos

# saia_drapeada = ModeloRoupa.create!(
#     :descricao => "Saia Drapeada",
#     :tipo_roupa_id => calca.id
#   )

# saia_drapeada.tipo_corpos << ampulheta
# saia_drapeada.tipo_corpos << retangulo
# saia_drapeada.tipo_corpos << triangulo

# saia_babados = ModeloRoupa.create!(
#     :descricao => "Saia com Babados",
#     :tipo_roupa_id => calca.id
#   )

# saia_babados.tipo_corpos << ampulheta
# saia_babados.tipo_corpos << retangulo
# saia_babados.tipo_corpos << triangulo

# saia_enviesada = ModeloRoupa.create!(
#     :descricao => "Saia com Babados",
#     :tipo_roupa_id => calca.id
#   )

#todos

calca_reta =  ModeloRoupa.create!(
    :descricao => "Calça Reta",
    :tipo_roupa_id => calca.id
  )

calca_flair = ModeloRoupa.create!(
    :descricao => "Calça Flair",
    :tipo_roupa_id => calca.id
  )

calca_skinny = ModeloRoupa.create!(
    :descricao => "Calça Skinny",
    :tipo_roupa_id => calca.id
  )

calca_skinny.ocasiaos << casual_trabalho
calca_skinny.ocasiaos << casual_passeio

calca_boyfriend = ModeloRoupa.create!(
    :descricao => "Calça Boyfriend",
    :tipo_roupa_id => calca.id
  )

ocasioes.each do |ocasiao|
  calca_reta.ocasiaos << ocasiao
  calca_flair.ocasiaos << ocasiao
end
#~bermudas

short = ModeloRoupa.create!(
    :descricao => "Short",
    :tipo_roupa_id => calca.id
  )

short.ocasiaos << casual_passeio
# ?

#camisas
camisa = TipoRoupa.find_by_tipo_roupa("CAMISA")
camisas = ModeloRoupa.create!([{
    :descricao => "Camisa",
    :tipo_roupa_id => camisa.id
  },{
    :descricao => "Camiseta",
    :tipo_roupa_id => camisa.id
  },{
    :descricao => "Regata",
    :tipo_roupa_id => camisa.id
  }])

camisas.each do |camisa|
  ocasioes.each do |ocasiao|
    camisa.ocasiaos << ocasiao
  end
end

bata = ModeloRoupa.create!(
    :descricao => "Bata",
    :tipo_roupa_id => camisa.id
  )

bata.tipo_corpos << ampulheta
bata.tipo_corpos << retangulo

bata.ocasiaos << casual_passeio
bata.ocasiaos << casual_trabalho

blusa_ombro_caido = ModeloRoupa.create!(
    :descricao => "Blusa Ombro Caído",
    :tipo_roupa_id => camisa.id
  )

blusa_ombro_caido.tipo_corpos << ampulheta
blusa_ombro_caido.tipo_corpos << retangulo
blusa_ombro_caido.tipo_corpos << pera

blusa_ombro_caido.ocasiaos << casual_passeio

tomara_que_caia = ModeloRoupa.create!(
    :descricao => "Blusa Tomara-Que-Caia",
    :tipo_roupa_id => camisa.id
  )

tomara_que_caia.ocasiaos << casual_passeio

tomara_que_caia.tipo_corpos << ampulheta

camisa_tradicional = ModeloRoupa.create!(
    :descricao => "Camisa Tradicional",
    :tipo_roupa_id => camisa.id
  )

camisa_tradicional.ocasiaos << formal_entrevista
camisa_tradicional.ocasiaos << formal_trabalho
camisa_tradicional.ocasiaos << casual_trabalho

sapato = TipoRoupa.find_by_tipo_roupa("SAPATO")
# ~sapatos -> botas
bota_montaria = ModeloRoupa.create!(
    :descricao => "Bota de Montaria",
    :tipo_roupa_id => sapato.id
  )

bota_montaria.ocasiaos << formal_entrevista
bota_montaria.ocasiaos << casual_trabalho
bota_montaria.ocasiaos << formal_trabalho

sapatilha = ModeloRoupa.create!(
    :descricao => "Sapatilha",
    :tipo_roupa_id => sapato.id
  )

sapatilha.ocasiaos << formal_entrevista
sapatilha.ocasiaos << casual_trabalho
sapatilha.ocasiaos << formal_trabalho

scarpin = ModeloRoupa.create!(
    :descricao => "Scarpin",
    :tipo_roupa_id => sapato.id
  )

scarpin.ocasiaos << formal_trabalho
scarpin.ocasiaos << formal_entrevista
scarpin.ocasiaos << formal_evento

tenis = ModeloRoupa.create!(
    :descricao => "Tênis",
    :tipo_roupa_id => sapato.id
  )

tenis.ocasiaos << casual_trabalho
tenis.ocasiaos << casual_passeio

sapatos = [bota_montaria, sapatilha, scarpin]

sapatos.each do |sapato|
  tipos_corpo.each do |tipo_corpo|
    sapato.tipo_corpos << tipo_corpo
  end
end

vestido = TipoRoupa.find_by_tipo_roupa("VESTIDO")

vestido_longo = ModeloRoupa.create!(
    :descricao => "Vestido Longo",
    :tipo_roupa_id => vestido.id
  )

vestido_longo.ocasiaos << formal_evento

vestido_balone = ModeloRoupa.create!(
    :descricao => "Vestido Balonê",
    :tipo_roupa_id => vestido.id
  )

vestido_balone.ocasiaos << formal_evento
vestido_balone.ocasiaos << casual_trabalho

vestido_balone.tipo_corpos << ampulheta
vestido_balone.tipo_corpos << triangulo
vestido_balone.tipo_corpos << retangulo

vestido_envelope = ModeloRoupa.create!(
    :descricao => "Vestido Envelope",
    :tipo_roupa_id => vestido.id
  )

vestido_envelope.ocasiaos << formal_entrevista
vestido_envelope.ocasiaos << formal_trabalho

vestido_tubinho = ModeloRoupa.create!(
    :descricao => "Vestido Tubinho",
    :tipo_roupa_id => vestido.id
  )

vestido_tubinho.ocasiaos << formal_trabalho
vestido_tubinho.ocasiaos << formal_evento
vestido_tubinho.ocasiaos << formal_entrevista

casaco = TipoRoupa.find_by_tipo_roupa("CASACO")

blazer = ModeloRoupa.create!(
    :descricao => "Blazer",
    :tipo_roupa_id => casaco.id
  )

ocasioes.each do |ocasiao|
  blazer.ocasiaos << ocasiao
end

jaqueta_couro = ModeloRoupa.create!(
    :descricao => "Jaqueta de Couro",
    :tipo_roupa_id => casaco.id
  )

jaqueta_couro.ocasiaos << casual_trabalho
jaqueta_couro.ocasiaos << casual_passeio

tipos_corpo.each do |tipo_corpo|
  # saia_evase.tipo_corpos << tipo_corpo
  # saia_plissada.tipo_corpos << tipo_corpo
  saia_pregas.tipo_corpos << tipo_corpo
  # saia_enviesada.tipo_corpos << tipo_corpo
  saia_envelope.tipo_corpos << tipo_corpo
  calca_reta.tipo_corpos << tipo_corpo
  short.tipo_corpos << tipo_corpo
  vestido_envelope.tipo_corpos << tipo_corpo
  vestido_tubinho.tipo_corpos << tipo_corpo
  blazer.tipo_corpos << tipo_corpo
  jaqueta_couro.tipo_corpos << tipo_corpo
  camisas.each do |camisa|
    camisa.tipo_corpos << tipo_corpo
  end
end