class AddNomeAndSobrenomeToUsers < ActiveRecord::Migration[8.0]
  def up
    unless column_exists?(:users, :nome)
      add_column :users, :nome, :string
    end
    unless column_exists?(:users, :sobrenome)
      add_column :users, :sobrenome, :string
    end
  end

  def down
    if column_exists?(:users, :nome)
      remove_column :users, :nome
    end
    if column_exists?(:users, :sobrenome)
      remove_column :users, :sobrenome
    end
  end
end
