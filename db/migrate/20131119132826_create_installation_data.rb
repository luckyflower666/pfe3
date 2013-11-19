class CreateInstallationData < ActiveRecord::Migration
  def change
    create_table :installation_data do |t|
      t.belongs_to :Client, index: true
      t.string :objectId
      t.string :appName
      t.string :appVersion
      t.integer :badge
      t.string :deviceToken
      t.string :deviceType
      t.string :installationId
      t.string :parseVersion
      t.string :timeZone

      t.timestamps
    end
  end
end
