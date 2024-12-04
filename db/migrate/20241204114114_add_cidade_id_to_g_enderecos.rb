class AddCidadeIdToGEnderecos < ActiveRecord::Migration[8.0]
  def change
    add_column :g_enderecos, :cidade_id, :integer
  end
end
