class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all.order("created_at desc")
  end

  # GET /teams/1
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  def create
    @team = Team.new(team_params)
    respond_to do |format|
      if @team.save
        format.html
        format.js { flash.now[:success] = "Team has successfully created!" }
      else
        format.html
        format.js { flash.now[:alert] = "Something Wrong" }
      end
    end
  end

  # PATCH/PUT /teams/1
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html
        format.js { flash.now[:success] = "Team has successfully updated!" }
      else
        format.html
        format.js { flash.now[:alert] = "Opps! Something Wrong Please Check with Admin" }
      end
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    respond_to do |format|
      format.html
      format.js { flash.now[:alert] = "Team was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :description, :logo)
    end
end
