class DataMigrationCreateInstructionsFromCsv < ActiveRecord::Migration
  require 'csv'
  def up
    rows = CSV.read("instructions.csv", :headers => true)
    rows.each do |row|
      Instruction.create(
        :header => row['header'],
        :footer => row['footer']
      )
    end

  end

  def down
    Instruction.delete_all
  end
end
