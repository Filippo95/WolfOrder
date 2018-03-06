class CreateDestinaziones < ActiveRecord::Migration
  def change
    create_table :destinaziones do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
