class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ask, :null => false
      t.text   :explanation
      t.references :quiz
    end
  end
end


# Quiz: id: 1, instructor_id: 3
# Question: id: 8, quiz_id: 1, content: "What's a thing?"
# Option: id: 4, question_id: 8, content: "This is a thing!"
# Option: id: 9, question_id: 8, content: "No, this is!"