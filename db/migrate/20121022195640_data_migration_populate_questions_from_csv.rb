class DataMigrationPopulateQuestionsFromCsv < ActiveRecord::Migration
  require 'csv'
  def up
    rows = CSV.read("automatograph_questions.csv")
    rows.shift
    rows.each do |row|
      Question.create(
        :expected_answer => row[0] == "Y",
        :text => row[1],
      )
    end
  end

  def down
    Question.delete_all
  end

end
