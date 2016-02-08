class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|


      t.references :quiz
      t.references :answer
    end
  end
end
