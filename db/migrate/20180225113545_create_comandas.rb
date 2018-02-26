class CreateComandas < ActiveRecord::Migration
  def change
    create_table :comandas do |t|
      t.date :data
      t.integer :tavolo
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
