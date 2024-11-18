class CreateCProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :c_produtos do |t|
      t.string :nome
      t.string :descricao
      t.decimal :preco
      t.boolean :status

      t.timestamps
    end
  end
end
