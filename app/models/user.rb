class User < ActiveRecord::Base
  attr_accessible :age, :answer_side, :eyes, :gender, :handedness, :name, :robot, :first_name, :last_name, :uid
end
