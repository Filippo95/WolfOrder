class CreateProdottos < ActiveRecord::Migration
  def change
    create_table :prodottos do |t|
      t.string :nome
      t.text :descrizione
      t.integer :id_cat
      t.float :prezzo

      t.timestamps null: false
    end
  end
end
