class Question < ActiveRecord::Base
  attr_accessible :expected_answer, :text

  def self.yes
    self.where(:expected_answer => true)
  end

  def self.no
    self.where(:expected_answer => false)
  end

  def self.for_session(session_number)
    if session_number == 1
      block1_yes, block2_yes = *Question.yes.in_groups_of(6).shuffle
      block1_no, block2_no = *Question.no.in_groups_of(6).shuffle

      a = block1_yes.zip(block1_no).map(&:shuffle).each_with_index.map do |(first, second), i| 
      [
        {:id => first.id, :text => first.text, :expected_answer => first.expected_answer, :instruction_id => i+1}, 
        {:id => second.id, :expected_answer => second.expected_answer, :text => second.text, :instruction_id => i+1}
      ]
      end.flatten
      b = block2_yes.zip(block2_no).map(&:shuffle).each_with_index.map do |(first, second), i| 
      [
        {:id => first.id, :text => first.text, :expected_answer => first.expected_answer, :instruction_id => i+1}, 
        {:id => second.id, :expected_answer => second.expected_answer, :text => second.text, :instruction_id => i+1}
      ]
      end.flatten
      result = {:block1 => a, :block2 => b}.to_json
    else
    end
    result
  end
end
