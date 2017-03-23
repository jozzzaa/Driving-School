class AddIndexToTables < ActiveRecord::Migration[5.0]
  def change
    add_index :campaigns, :id
    add_index :leads, :campaign_id
  end
end
