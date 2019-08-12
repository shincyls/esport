class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:show, :edit, :update, :destroy, :populate]

  # GET /tournaments
  def index
    @tournaments = Tournament.all
  end

  # GET /tournaments/1
  def show
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

  # GET /tournaments/1/edit
  def edit
  end

  # GET /tournaments/1/populate
  def populate
    @tournament = Tournament.find(params[:id])
    @tournament.populate_result
    respond_to do |format|
      format.html
      format.js { flash.now[:success] = "All Predictions of this Tournament have been calculated! Please Check Match Predictions Table" }
    end
  end

  # POST /tournaments
  def create
    @tournament = Tournament.new(tournament_params)
    respond_to do |format|
      if @tournament.save
        format.html
        format.js { flash.now[:success] = "Tournament has successfully created!" }
      else
        format.html
        format.js { flash.now[:alert] = "Something Wrong" }
      end
    end
    # Create Brackets Automatically
    1.upto(16) do |number|
      @match = Match.new(tournament_id: @tournament.id, bracket_id: number)
      @match.save
    end
  end

  # PATCH/PUT /tournaments/1
  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html
        format.js { flash.now[:success] = "Tournament has successfully updated!" }
      else
        format.html
        format.js { flash.now[:alert] = "Opps! Something Wrong Please Check with Admin" }
      end
    end
  end

  # DELETE /tournaments/1
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html
      format.js { flash.now[:success] = "Tournament and all associated matches has been successfully removed!" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:title, :description, :start_date, :end_date, :prize_1, :info_1, :prize_2, :info_2, :prize_3, :info_3, :banner, :logo)
    end
end
