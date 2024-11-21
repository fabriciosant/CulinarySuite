class CreateGCidades < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:g_cidades)
      create_table :g_cidades do |t|
        t.string :nome
        t.references :g_estado, null: false, foreign_key: true
        t.timestamps
      end
    end
  end

  def down
    drop_table :g_cidades if table_exists?(:g_cidades)
  end
end
