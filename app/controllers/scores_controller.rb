class ScoresController < ApplicationController

  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @score = Score.new(score_params)
    @score.save()
    render json: @score
  end

  private

  def score_params
    params.require(:score).permit(:name, :score)
  end

end
