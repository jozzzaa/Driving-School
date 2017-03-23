class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :ref_code, index: true
      t.string :name
      t.text :description

      t.timestamps
    end

  end
end
