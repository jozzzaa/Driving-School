class AddDetailsToLeads < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :campaign_id, :string
    add_column :leads, :share_token, :string
    add_column :leads, :referred_by, :string
    add_column :leads, :status_id, :integer
  end

end
