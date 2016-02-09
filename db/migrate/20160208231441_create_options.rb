class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name, :null => false
      t.boolean :correct, default: false

      t.references :question
    end
  end
end
