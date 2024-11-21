class CreateCUsuarios < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_usuarios)
      create_table :c_usuarios do |t|
        t.integer :cpf
        t.string :nome
        t.integer :telefone
        t.references :g_endereco, null: false, foreign_key: true

        t.timestamps
      end
    end
  end

  def down
    drop_table :c_usuarios if table_exists?(:c_usuarios)
  end
end
