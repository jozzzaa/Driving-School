class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.integer :student_id
      t.integer :instructor_id
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end

    add_index :appointments, :student_id
    add_index :appointments, :instructor_id

  end
end
