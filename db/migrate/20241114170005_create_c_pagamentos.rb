class CreateCPagamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :c_pagamentos do |t|
      t.boolean :pagamento_entrega
      t.references :c_tipo_pagamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
