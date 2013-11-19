class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.belongs_to :Client, index: true
      t.string :color
      t.string :brand
      t.string :theme

      t.timestamps
    end
  end
end
