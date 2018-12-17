class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all.order("created_at desc")
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    respond_to :html, :js
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches
  def create
    @match = Match.new(match_params)
    respond_to do |format|
      if @match.save
        format.html
        format.js { flash.now[:success] = "Match has successfully created!" }
      else
        format.html
        format.js { flash.now[:alert] = "Something Wrong" }
      end
    end
  end

  # PATCH/PUT /matches/1
  def update
    respond_to do |format|
      if @match.save
        format.html
        format.js { flash.now[:success] = "Match has successfully updated!" }
      else
        format.html
        format.js { flash.now[:alert] = "Opps! Something Wrong Please Check with Admin" }
      end
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
    respond_to do |format|
      format.html
      format.js { flash.now[:success] = "Match has successfully removed!" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:name, :description, :team_home_id, :team_home_won, :team_away_id, :team_away_won, :team_won_id, :match_start, :match_end, :question_1, :question_2, :question_3, :question_4, :question_5, :tournament_id, :bracket_id)
    end
end
