class CreateGEstados < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:g_estados)
      create_table :g_estados do |t|
        t.string :nome
        t.timestamps
      end
    end
  end

  def down
    drop_table :g_estados if table_exists?(:g_cidades)
  end
end
