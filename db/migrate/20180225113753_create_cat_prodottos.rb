class CreateCatProdottos < ActiveRecord::Migration
  def change
    create_table :cat_prodottos do |t|
      t.string :nome
      t.text :desciption
      t.integer :id_parent

      t.timestamps null: false
    end
  end
end
