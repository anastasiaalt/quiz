class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.date :assigned, :null => false
      t.string :title, :null => false
      
      t.references :instructor
    end
  end
end
