json.extract! c_usuario, :id, :cpf, :nome, :telefone, :g_endereco_id, :created_at, :updated_at
json.url c_usuario_url(c_usuario, format: :json)
