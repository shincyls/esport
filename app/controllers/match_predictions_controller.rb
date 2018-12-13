class MatchPredictionsController < ApplicationController
  before_action :set_match_prediction, only: [:show, :edit, :update, :destroy]

  # GET /match_predictions
  def index
    @match_predictions = MatchPrediction.all.order("created_at desc")
  end

  # GET /match_predictions/1
  def show
  end

  def predict
  end

  # GET /match_predictions/new
  def new
    respond_to :html, :js
    @match_prediction = MatchPrediction.new
    @match = Match.find(params[:id])
  end

  # GET /match_predictions/1/edit
  def edit
    respond_to :html, :js
  end

  # POST /match_predictions
  def create
    @match_prediction = MatchPrediction.new(match_prediction_params)

    if current_user.match_predictions.where(match_id: @match_prediction.id).exists?
      redirect_to edit_match_prediction_path(id: @match_prediction.id)
    else
      respond_to do |format|
        if @match_prediction.save
          format.html
          format.js { flash.now[:success] = "You have successfully created registration!" }
        else
          format.html
          format.js { flash.now[:alert] = "The prediction to this match has been submitted." }
        end
      end
    end

  end

  # PATCH/PUT /match_predictions/1
  def update
    respond_to do |format|
      if @match_prediction.update(match_prediction_params)
        format.html { redirect_to @match_prediction, notice: 'Match prediction was successfully updated.' }
        format.js
      else
        format.html { render :edit }
        format.js
      end
    end
  end

  # DELETE /match_predictions/1
  def destroy
    @match_prediction.destroy
    respond_to do |format|
      format.html { redirect_to match_predictions_url, notice: 'Match prediction was successfully destroyed.' }
      format.json { head :no_content }
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

end
