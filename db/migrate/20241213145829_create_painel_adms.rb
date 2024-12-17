class CreatePainelAdms < ActiveRecord::Migration[8.0]
  def change
    unless table_exists?(:painel_adms)
      create_table :painel_adms do |t|
        t.timestamps
      end
    end
  end
end
