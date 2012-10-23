class AnswersController < ApplicationController

  respond_to :json

  def create
    @answer = Answer.new params[:answer]

    if @answer.save
      respond_with @answer
    end
  end
end
