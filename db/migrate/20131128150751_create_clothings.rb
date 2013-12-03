class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.belongs_to :Item, index: true
      t.integer :size
      t.string :uid_cloth
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
