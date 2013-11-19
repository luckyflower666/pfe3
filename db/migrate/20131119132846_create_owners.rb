class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.belongs_to :User, index: true
      t.string :facebookappid
      t.string :description
      t.string :facebookappkey

      t.timestamps
    end
  end
end
