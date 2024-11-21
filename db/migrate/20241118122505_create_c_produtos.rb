class CreateCProdutos < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_produtos)
      create_table :c_produtos do |t|
        t.string :nome
        t.string :descricao
        t.decimal :preco
        t.boolean :status

        t.timestamps
      end
    end
  end

  def down
    drop_table :c_produtos if table_exists?(:c_produtos)
  end
end
