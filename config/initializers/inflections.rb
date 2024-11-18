ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "c_tipo_pagamento", "c_tipos_pagamentos"
  inflect.irregular "c_pagamento", "c_pagamentos"
  inflect.irregular "c_statu_pedido", "c_status_pedidos"
  inflect.irregular "c_produto", "c_produtos"
  inflect.irregular "c_produto_promocao", "c_produtos_promocoes"
   inflect.acronym "RESTful"
end
