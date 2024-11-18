class CreateGCidades < ActiveRecord::Migration[8.0]
  def change
    create_table :g_cidades do |t|
      t.string :nome

      t.timestamps
    end
  end
end
