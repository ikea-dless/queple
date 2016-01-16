class AnswersController < ApplicationController
  before_action :authenticate_user!
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to question_path(@answer.question_id), flash: { success: '保存しました' }
    else
      render question_path(@answer.question_id)
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end
end
