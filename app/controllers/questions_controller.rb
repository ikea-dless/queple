class QuestionsController < ApplicationController
  before_action :authenticate_user!
  def show
    question_id = params[:id]
    @question = Question.find_by(id: question_id)
    @answer = Answer.new
    @answer.question_id = question_id
    @answers = Answer.where(question_id: question_id)
  end

  def new
    @question = Question.new
    @genre = Genre.all
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
      redirect_to question_path(@question), flash: { success: '保存しました' }
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :genre_id)
  end
end
