class CreateCPedidos < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_pedidos)
        create_table :c_pedidos do |t|
        t.datetime :data_pedido
        t.boolean :entrega
        t.references :c_usuarios, null: false, foreign_key: true
        t.references :c_produtos, null: false, foreign_key: true
        t.references :c_pagamentos, null: false, foreign_key: true

        t.timestamps
      end
    end
  end
  def down
    drop_table :c_pedidos if table_exists?(:c_pedidos)
  end
end
