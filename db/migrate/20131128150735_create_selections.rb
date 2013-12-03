class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.belongs_to :Visit, index: true

      t.timestamps
    end
  end
end
