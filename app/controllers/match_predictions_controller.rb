class MatchPredictionsController < ApplicationController
  before_action :set_match_prediction, only: [:show, :edit, :route, :update, :destroy]

  # GET /match_predictions
  def index
    @match_predictions = MatchPrediction.all.order("created_at desc")
  end

  # GET /match_predictions/1
  def show
  end

  # GET /match_predictions/1/route
  def route
    if @match_prediction.match_predicted
      redirect_to edit_match_prediction_path(@match_prediction)
    else
      redirect_to new_match_prediction_path(@match_prediction)
    end
  end

  # GET /match_predictions/new
  def new
    @match_prediction = MatchPrediction.new
    @match = Match.find(params[:id])
  end

  # GET /match_predictions/1/edit
  def edit
    if allow_prediction
    end
  end

  # POST /match_predictions
  def create
    if allow_prediction
      @match_prediction = MatchPrediction.new(match_prediction_params)
      respond_to do |format|
        if @match_prediction.save
          format.html
          format.js { flash.now[:success] = "You have submitted your prediction for this match!" }
        else
          format.html
          format.js { flash.now[:alert] = "The prediction to this match has been submitted." }
        end
      end
    end
  end

  # PATCH/PUT /match_predictions/1
  def update
    if allow_prediction
      respond_to do |format|
        if @match_prediction.save
          format.html
          format.js { flash.now[:success] = "You have updated your prediction for this match!" }
        else
          format.html
          format.js { flash.now[:alert] = "The prediction to this match has been submitted." }
        end
      end
    end
  end

  # DELETE /match_predictions/1
  def destroy
    @match_prediction.destroy
    respond_to do |format|
      format.html
      format.js { flash.now[:alert] = "Match prediction was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_prediction
      @match_prediction = MatchPrediction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_prediction_params
      params.require(:match_prediction).permit(:user_id, :match_id, :answer_1, :answer_2, :answer_3)
    end

    def allow_prediction
      if (@match.match_start - Time.current)/1.minutes > 30 && @match.tournament.prediction == true
        return true
      else
        respond_to do |format|
          format.html
          format.js { flash.now[:alert] = "Unable to submit prediction when <30min before the match start." }
        end
        return false
      end
    end

end
