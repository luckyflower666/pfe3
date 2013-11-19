class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.belongs_to :User, index: true
      t.string :sizeup
      t.integer :sizedown
      t.integer :sizehoes
      t.string :IMEI

      t.timestamps
    end
  end
end
