# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130709234857) do

  create_table "cors", :force => true do |t|
    t.string   "descricao"
    t.string   "tipo_cor"
    t.string   "rgb"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "destinos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ocasiao_id"
  end

  create_table "estilos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "looks", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "destino_id"
    t.integer  "ocasiao_id"
    t.decimal  "temperatura",   :precision => 10, :scale => 0
    t.string   "humor_usuario"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "looks", ["destino_id"], :name => "index_looks_on_destino_id"
  add_index "looks", ["ocasiao_id"], :name => "index_looks_on_ocasiao_id"
  add_index "looks", ["usuario_id"], :name => "index_looks_on_usuario_id"

  create_table "looks_peca_de_roupas", :force => true do |t|
    t.integer "look_id"
    t.integer "peca_de_roupa_id"
  end

  create_table "marcas", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modelo_roupas", :force => true do |t|
    t.string   "descricao"
    t.integer  "tipo_roupa_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ocasiaos", :force => true do |t|
    t.string   "descricao"
    t.string   "tipo_ocasiao"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "peca_de_roupas", :force => true do |t|
    t.integer  "id_android"
    t.string   "descricao"
    t.integer  "usuario_id"
    t.integer  "estilo_id"
    t.integer  "marca_id"
    t.integer  "material_id"
    t.string   "caminho_imagem"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "ocasiao_id"
    t.integer  "tipo_roupa_id"
  end

  add_index "peca_de_roupas", ["estilo_id"], :name => "index_peca_de_roupas_on_estilo_id"
  add_index "peca_de_roupas", ["marca_id"], :name => "index_peca_de_roupas_on_marca_id"
  add_index "peca_de_roupas", ["material_id"], :name => "index_peca_de_roupas_on_material_id"
  add_index "peca_de_roupas", ["usuario_id"], :name => "index_peca_de_roupas_on_usuario_id"

  create_table "peca_de_roupas_tipo_corpos", :force => true do |t|
    t.integer "peca_de_roupas_id"
    t.integer "tipo_corpos_id"
  end

  create_table "tipo_corpos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_roupas", :force => true do |t|
    t.string   "descricao"
    t.string   "tipo_roupa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.integer  "id_android"
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "data_nasc"
    t.integer  "cor_cabelo_id"
    t.integer  "cor_olhos_id"
    t.decimal  "peso",                    :precision => 10, :scale => 2
    t.decimal  "altura",                  :precision => 10, :scale => 2
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.integer  "ocasiao_trabalho_id"
    t.integer  "importancia_temperatura"
    t.integer  "importancia_humor"
    t.integer  "tipo_corpo_id"
  end

  add_index "usuarios", ["cor_cabelo_id"], :name => "index_usuarios_on_cor_cabelo_id"
  add_index "usuarios", ["cor_olhos_id"], :name => "index_usuarios_on_cor_olhos_id"

end
