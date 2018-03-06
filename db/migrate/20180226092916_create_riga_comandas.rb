class CreateRigaComandas < ActiveRecord::Migration
  def change
    create_table :riga_comandas do |t|
      t.integer :id_comanda
      t.integer :id_prodotto
      t.integer :quantit
      t.text :modifiche
      t.boolean :consegnata

      t.timestamps null: false
    end
  end
end
