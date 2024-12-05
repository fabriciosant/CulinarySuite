class AddUserToCPedidos < ActiveRecord::Migration[8.0]
  def change
    add_reference :c_pedidos, :user, null: false, foreign_key: true
  end
end
