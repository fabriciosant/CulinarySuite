class CreateCUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :c_usuarios do |t|
      t.integer :cpf
      t.string :nome
      t.integer :telefone
      t.references :g_endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
