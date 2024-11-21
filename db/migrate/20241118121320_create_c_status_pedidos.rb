class CreateCStatusPedidos < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_status_pedidos)
      create_table :c_status_pedidos do |t|
        t.integer :tipo

        t.timestamps
      end
    end
  end

  def down
    drop_table :c_status_pedidos if table_exists(:c_status_pedidos)
  end
end
