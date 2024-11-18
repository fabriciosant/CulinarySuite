class CreateCStatusPedidos < ActiveRecord::Migration[8.0]
  def change
    create_table :c_status_pedidos do |t|
      t.integer :tipo

      t.timestamps
    end
  end
end
