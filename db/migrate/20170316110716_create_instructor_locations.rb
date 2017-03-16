class CreateInstructorLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :instructor_locations do |t|
      t.integer :instructor_id
      t.integer :location_id

      t.timestamps
    end

    add_index :instructor_locations, :instructor_id
    add_index :instructor_locations, :location_id

  end
end
