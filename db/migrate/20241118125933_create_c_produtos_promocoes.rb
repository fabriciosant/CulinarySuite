class CreateCProdutosPromocoes < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_produtos_promocoes)
      create_table :c_produtos_promocoes do |t|
        t.string :nome
        t.string :descricao
        t.decimal :preco
        t.boolean :status
        t.datetime :data_promocao
        t.references :c_produto, null: false, foreign_key: true

        t.timestamps
      end
    end
  end
  def down
    drop_table :c_produtos_promocoes if table_exists?(:c_produtos_promocoes)
  end
end
