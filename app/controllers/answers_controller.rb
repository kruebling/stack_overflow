class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      flash[:notice] = "Answer successfully added!"
      redirect_to answers_path
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
    @answers = @answer.answers
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      flash[:notice] = "Answer successfully updated!"
      redirect_to  answer_path
    else
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:notice] = "Answer successfully deleted!"
    redirect_to answers_path
  end

  def upvote
    @answer = Answer.find(params[:id])
    @answer.upvote_by current_user
    @answers = Answer.all
    redirect_to post_path(@answer.post_id)
  end

  def downvote
    @answer = Answer.find(params[:id])
    @answer.downvote_by current_user
    @answers = Answer.all
    redirect_to post_path(@answer.post_id)
  end

private
  def answer_params
    params.require(:answer).permit(:title, :body, :user_id)
  end
end
