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

ActiveRecord::Schema.define(:version => 20130413193657) do

  create_table "consuls", :force => true do |t|
    t.string   "data"
    t.string   "hora"
    t.integer  "paciente_id"
    t.integer  "medico_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "consuls", ["medico_id"], :name => "index_consuls_on_medico_id"
  add_index "consuls", ["paciente_id"], :name => "index_consuls_on_paciente_id"

  create_table "especialidades", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exames", :force => true do |t|
    t.string   "data"
    t.string   "entrega"
    t.integer  "consul_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "exames", ["consul_id"], :name => "index_exames_on_consul_id"

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.string   "crm"
    t.string   "telefone"
    t.string   "logradouro"
    t.integer  "especialidade_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "medicos", ["especialidade_id"], :name => "index_medicos_on_especialidade_id"

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "sexo"
    t.string   "email"
    t.string   "telefone"
    t.string   "data"
    t.string   "logradouro"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
