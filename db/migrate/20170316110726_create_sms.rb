class CreateSms < ActiveRecord::Migration[5.0]
  def change
    create_table :sms do |t|
      t.text :body

      t.timestamps
    end
  end
end
