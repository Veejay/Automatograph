class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :header
      t.text :footer

      t.timestamps
    end
  end
end
