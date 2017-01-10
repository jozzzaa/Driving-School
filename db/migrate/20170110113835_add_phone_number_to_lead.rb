class AddPhoneNumberToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :phone_number, :integer
  end
end
