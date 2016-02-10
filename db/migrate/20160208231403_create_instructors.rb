class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name

      t.string :username, :null => false
      t.string :password_digest, :null => false
      t.string :token

      t.timestamps    
    end
  end
end
