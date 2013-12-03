class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :Client, index: true
      t.integer :timeinstore

      t.timestamps
    end
  end
end
