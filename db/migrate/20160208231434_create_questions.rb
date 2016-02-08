class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name, :null => false

      t.references :quiz
      t.references :answer
    end
  end
end
