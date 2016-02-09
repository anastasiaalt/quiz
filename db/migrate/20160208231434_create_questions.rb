class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ask, :null => false

      t.string :choice_a, :null => false
      t.string :choice_b, :null => false
      t.string :choice_c, :null => false
      t.string :choice_d, :null => false

      t.references :quiz
      t.references :answer
    end
  end
end
