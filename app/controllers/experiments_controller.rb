class ExperimentsController < ApplicationController
  def start
    @session = params[:session_number]
    @instructions = Instruction.all.to_json
    @questions = Question.for_session(params[:session_number].to_i) 
  end
end
