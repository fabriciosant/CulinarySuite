class CreateCTiposPagamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :c_tipos_pagamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
