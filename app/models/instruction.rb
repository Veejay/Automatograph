class Instruction < ActiveRecord::Base
  attr_accessible :footer, :header

  def self.as_json

  end
end
