class CreateCProdutosPromocoes < ActiveRecord::Migration[8.0]
  def change
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
