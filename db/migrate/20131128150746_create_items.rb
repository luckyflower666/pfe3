class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :Selection, index: true
      t.string :title
      t.string :subtitle
      t.string :describe
      t.string :state
      t.string :reference
      t.string :categorie

      t.timestamps
    end
  end
end
