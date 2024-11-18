json.extract! c_produto_promocao, :id, :nome, :descricao, :preco, :status, :data_promocao, :c_produto_id, :created_at, :updated_at
json.url c_produto_promocao_url(c_produto_promocao, format: :json)
