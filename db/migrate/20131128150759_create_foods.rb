class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.belongs_to :Item, index: true
      t.string :uid_food

      t.timestamps
    end
  end
end
