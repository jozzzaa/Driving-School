class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.text :name
      t.text :email
      t.string :phone_number
      t.string :gender_pref
      t.text :transmission_pref
      t.string :location
      t.text :hours_completed
      t.text :license_by

      t.timestamps
    end
  end
end
