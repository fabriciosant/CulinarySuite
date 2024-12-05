json.extract! c_pedido, :id, :data_pedido, :entrega, :c_usuarios_id, :c_produtos_id, :c_pagamentos_id, :created_at, :updated_at
json.url c_pedido_url(c_pedido, format: :json)
