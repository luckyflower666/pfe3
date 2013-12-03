class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :Selection, index: true
      t.integer :sumup

      t.timestamps
    end
  end
end
