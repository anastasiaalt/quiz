class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name, :null => false
      t.string :explanation, :null => false

      t.references :question
    end
  end
end
