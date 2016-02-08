class CreateQuizes < ActiveRecord::Migration
  def change
    create_table :quizes do |t|
      t.date :date, :null => false

      t.references :instructor
    end
  end
end
