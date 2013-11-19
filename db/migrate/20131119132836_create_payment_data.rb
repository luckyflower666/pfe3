class CreatePaymentData < ActiveRecord::Migration
  def change
    create_table :payment_data do |t|
      t.belongs_to :Client, index: true
      t.string :cardnumber
      t.string :cardId
      t.date :expirationdata
      t.string :securitycode

      t.timestamps
    end
  end
end
