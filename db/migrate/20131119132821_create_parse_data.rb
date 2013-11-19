class CreateParseData < ActiveRecord::Migration
  def change
    create_table :parse_data do |t|
      t.belongs_to :User, index: true
      t.string :username
      t.string :password
      t.string :authdata
      t.string :email
      t.boolean :emailverified
      t.string :ACL
      t.string :objectId

      t.timestamps
    end
  end
end
