json.extract! c_pagamento, :id, :pagamento_entrega, :c_tipo_pagamento_id, :created_at, :updated_at
json.url c_pagamento_url(c_pagamento, format: :json)
