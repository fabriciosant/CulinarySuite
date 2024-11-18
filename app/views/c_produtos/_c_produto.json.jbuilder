json.extract! c_produto, :id, :nome, :descricao, :preco, :status, :created_at, :updated_at
json.url c_produto_url(c_produto, format: :json)
