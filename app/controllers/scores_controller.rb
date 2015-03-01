class ScoresController < ApplicationController

  def index
    @scores = Score.all
    @scores = @scores.sort_by { |score| score.score}.reverse
    @scores = @scores[0..9]
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
