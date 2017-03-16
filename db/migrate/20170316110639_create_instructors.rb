class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :transmission
      t.string :gender
      t.string :address_text

      t.timestamps
    end

    add_index :instructors, :id

  end
end
