ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "c_tipo_pagamento", "c_tipos_pagamentos"
  inflect.irregular "c_pagamento", "c_pagamentos"
  inflect.irregular "c_statu_pedido", "c_status_pedidos"
  inflect.irregular "c_produto", "c_produtos"
  inflect.irregular "c_produto_promocao", "c_produtos_promocoes"
  inflect.irregular "g_cidade", "g_cidades"
  inflect.irregular "g_estado", "g_estados"
  inflect.irregular "g_endereco", "g_enderecos"
  inflect.irregular "c_usuario", "c_usuarios"
  inflect.irregular "c_pedido", "c_pedidos"
   inflect.acronym "RESTful"
end
