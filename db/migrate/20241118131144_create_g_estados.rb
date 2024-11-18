class CreateGEstados < ActiveRecord::Migration[8.0]
  def change
    create_table :g_estados do |t|
      t.string :nome
      t.references :g_cidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
