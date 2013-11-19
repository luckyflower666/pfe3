class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.belongs_to :Owner, index: true
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.integer :numberfittingroom
      t.string :type
    
      
      t.timestamps
    end
  end
end
