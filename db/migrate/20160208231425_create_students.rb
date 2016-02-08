class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false

      t.string :username, :null => false
      t.string :encrypted_password, :null => false
    end
  end
end
