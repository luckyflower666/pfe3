class CreateSocialData < ActiveRecord::Migration
  def change
    create_table :social_data do |t|
      t.belongs_to :Client, index: true
      t.string :facebookToken
      t.string :facebookSecret
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
