class CreateQuizes < ActiveRecord::Migration
  def change
    create_table :quizes do |t|


      t.references :instructor
    end
  end
end
