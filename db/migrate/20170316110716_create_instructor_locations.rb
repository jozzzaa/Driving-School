class CreateInstructorLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors_locations do |t|
      t.belongs_to :instructor, index: true
      t.belongs_to :location, index: true

      t.timestamps
    end

  end
end
