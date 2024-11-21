class CreateCTiposPagamentos < ActiveRecord::Migration[8.0]
  def up
    unless table_exists?(:c_tipos_pagamentos)
      create_table :c_tipos_pagamentos do |t|
        t.string :descricao

        t.timestamps
      end
    end
  end

  def down
    drop_table :c_tipos_pagamentos if table_exists?(:c_tipos_pagamentos)
  end
end
