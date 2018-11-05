class MatchPredictionsController < ApplicationController
  before_action :set_match_prediction, only: [:show, :edit, :update, :destroy]

  # GET /match_predictions
  # GET /match_predictions.json
  def index
    @match_predictions = MatchPrediction.all
  end

  # GET /match_predictions/1
  # GET /match_predictions/1.json
  def show
  end

  # GET /match_predictions/new
  def new
    @match_prediction = MatchPrediction.new
  end

  # GET /match_predictions/1/edit
  def edit
  end

  # POST /match_predictions
  # POST /match_predictions.json
  def create
    @match_prediction = MatchPrediction.new(match_prediction_params)

    respond_to do |format|
      if @match_prediction.save
        format.html { redirect_to @match_prediction, notice: 'Match prediction was successfully created.' }
        format.json { render :show, status: :created, location: @match_prediction }
      else
        format.html { render :new }
        format.json { render json: @match_prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_predictions/1
  # PATCH/PUT /match_predictions/1.json
  def update
    respond_to do |format|
      if @match_prediction.update(match_prediction_params)
        format.html { redirect_to @match_prediction, notice: 'Match prediction was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_prediction }
      else
        format.html { render :edit }
        format.json { render json: @match_prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_predictions/1
  # DELETE /match_predictions/1.json
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
