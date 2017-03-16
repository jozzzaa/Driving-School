class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :postcode

      t.timestamps
    end

    add_index :locations, :id

  end
end
