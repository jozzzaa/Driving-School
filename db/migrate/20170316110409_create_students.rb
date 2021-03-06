class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.integer :postcode
      t.string :ref_type
      t.integer :ref_person

      t.timestamps
    end

    add_index :students, :id
    
  end
end
