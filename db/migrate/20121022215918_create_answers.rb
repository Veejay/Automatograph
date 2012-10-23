class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :session_id
      t.integer :block_id
      t.integer :question_id
      t.integer :trial_number
      t.integer :instruction_id
      t.boolean :answer

      t.timestamps
    end
  end
end
