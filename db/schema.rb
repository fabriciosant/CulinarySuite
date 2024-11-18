# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_18_131805) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "c_pagamentos", force: :cascade do |t|
    t.boolean "pagamento_entrega"
    t.bigint "c_tipo_pagamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["c_tipo_pagamento_id"], name: "index_c_pagamentos_on_c_tipo_pagamento_id"
  end

  create_table "c_pagmentos", force: :cascade do |t|
    t.boolean "pagamento_entrega"
    t.bigint "c_tipo_pagamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["c_tipo_pagamento_id"], name: "index_c_pagmentos_on_c_tipo_pagamento_id"
  end

  create_table "c_produtos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.decimal "preco"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "c_produtos_promocoes", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.decimal "preco"
    t.boolean "status"
    t.datetime "data_promocao"
    t.bigint "c_produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["c_produto_id"], name: "index_c_produtos_promocoes_on_c_produto_id"
  end

  create_table "c_status_pedidos", force: :cascade do |t|
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "c_tipos_pagamentos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_cidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_enderecos", force: :cascade do |t|
    t.integer "cep"
    t.string "logadouro"
    t.integer "numero"
    t.string "bairro"
    t.text "complemento"
    t.bigint "g_estado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_estado_id"], name: "index_g_enderecos_on_g_estado_id"
  end

  create_table "g_estados", force: :cascade do |t|
    t.string "nome"
    t.bigint "g_cidade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_cidade_id"], name: "index_g_estados_on_g_cidade_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "c_pagamentos", "c_tipos_pagamentos"
  add_foreign_key "c_pagmentos", "c_tipos_pagamentos"
  add_foreign_key "c_produtos_promocoes", "c_produtos"
  add_foreign_key "g_enderecos", "g_estados"
  add_foreign_key "g_estados", "g_cidades"
end
