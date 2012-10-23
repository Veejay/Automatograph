class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :uid
      t.integer :age
      t.boolean :gender
      t.integer :handedness
      t.boolean :answer_side
      t.boolean :eyes
      t.integer :session
      t.boolean :robot

      t.timestamps
    end
  end
end
