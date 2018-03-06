class CreateCatProdottos < ActiveRecord::Migration
  def change
    create_table :cat_prodottos do |t|
      t.string :name
      t.text :description
      t.integer :id_parent
      t.integer :id_destination

      t.timestamps null: false
    end
  end
end
