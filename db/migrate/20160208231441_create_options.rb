class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|

      t.references :question
    end
  end
end
