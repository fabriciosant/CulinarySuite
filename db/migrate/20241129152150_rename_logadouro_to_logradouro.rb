class RenameLogadouroToLogradouro < ActiveRecord::Migration[8.0]
  def change
    rename_column :g_enderecos, :logadouro, :logradouro
  end
end
