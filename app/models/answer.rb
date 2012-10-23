class Answer < ActiveRecord::Base
  attr_accessible :answer, :block_id, :instruction_id, :question_id, :session_id, :trial_number, :user_id
end
