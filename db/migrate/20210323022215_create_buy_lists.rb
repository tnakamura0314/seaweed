class CreateBuyLists < ActiveRecord::Migration[6.0]
  def change
    create_table :buy_lists do |t|
      t.text :text
      t.boolean :checked
      t.references :user,     null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
