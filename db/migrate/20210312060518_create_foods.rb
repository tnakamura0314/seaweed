class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name,           null: false
      t.string :number,       null: false
      t.integer :quantity_id,   null: false
      t.date :deadline,         null: false
      t.integer :status
      t.references :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end
