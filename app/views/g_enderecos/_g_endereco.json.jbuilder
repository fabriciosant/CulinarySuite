json.extract! g_endereco, :id, :cep, :logadouro, :numero, :bairro, :complemento, :g_estado_id, :created_at, :updated_at
json.url g_endereco_url(g_endereco, format: :json)
