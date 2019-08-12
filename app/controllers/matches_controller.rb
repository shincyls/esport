class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy, :question, :setquestion]
  before_action :require_admin, only: [:show, :edit, :update, :destroy, :question, :setquestion]

  # GET /matches
  def index
    @matches = Match.all.order("created_at desc")
  end

  # GET /matches/1
  def show
  end

  # GET /matches/new
  def new
    respond_to :html, :js
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
    @form = params[:form]
  end

  # POST /matches
  def create
    @match = Match.new(match_params)
    @match.question_1 = PageContent.find_by(name: "Default_Q1").value
    @match.question_2 = PageContent.find_by(name: "Default_Q2").value
    @match.question_3 = PageContent.find_by(name: "Default_Q3").value
    @match.question_4 = PageContent.find_by(name: "Default_Q4").value
    @match.question_5 = PageContent.find_by(name: "Default_Q5").value

    respond_to do |format|
      if @match.save
        format.html
        format.js { flash.now[:success] = "Match has successfully created!" }
      else
        format.html
        format.js { flash.now[:alert] = "Opps! Something Wrong Please Check with Admin" }
      end
    end
  end

  # PATCH/PUT /matches/1
  def update
    respond_to do |format|
      if @match.update(match_params)
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
      format.js { flash.now[:alert] = "Match was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:name, :description, :team_home_id, :team_home_won, :team_away_id, :team_away_won, :team_won_id, :match_start, :match_end, :question_1, :question_2, :question_3, :question_4, :question_5, :selection_1, :selection_2, :selection_3, :selection_4, :selection_5, :answer_1, :answer_2, :answer_3, :answer_4, :answer_5, :tournament_id, :bracket_id, :status)
    end
    
end
