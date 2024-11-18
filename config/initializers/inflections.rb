ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "c_tipo_pagamento", "c_tipos_pagamentos"
  inflect.irregular "c_pagamento", "c_pagamentos"
  inflect.irregular "c_statu_pedido", "c_status_pedidos"
   inflect.acronym "RESTful"
end
