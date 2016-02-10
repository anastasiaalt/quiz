class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false

      t.string :username, :null => false
      t.string :password_digest, :null => false
      t.string :token

      t.references :cohort
    end
  end
end
