class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean :expected_answer
      t.string :text

      t.timestamps
    end
  end
end
