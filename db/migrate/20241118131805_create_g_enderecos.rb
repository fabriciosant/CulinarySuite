class CreateGEnderecos < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:g_enderecos)
      create_table :g_enderecos do |t|
        t.integer :cep
        t.string :logadouro
        t.integer :numero
        t.string :bairro
        t.text :complemento
        t.references :g_estado, null: false, foreign_key: true

        t.timestamps
      end
    end
  end

  def down
    drop_table :g_enderecos if table_exists?(:g_enderecos)
  end
end
