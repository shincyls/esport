class PagesController < ApplicationController

    before_action :require_login
    before_action :require_admin, only: [:approve, :display, :admin, :select]

    def home
        @tournaments = Tournament.with_matches.where(display: true).order("start_date desc")
    end

    def info
    end

    def admin
    end

    def select
        respond_to :html, :js
        @select = params[:button]

        case params[:button]
        when "1"
            @users = User.all
        when "2"
            @teams = Team.all
        when "3"
            @matches = Match.all
        when "4"
            @match_predictions = MatchPrediction.all
        when "5"
            @tournaments = Tournament.all
        else
            redirect_to root_url
        end
    end

    def approve
        @user = User.find(params[:id])
        if @user.approval
          @user.update_attribute(:approval, false)
        else
          @user.update_attribute(:approval, true)
        end
    end

    def display
        @tournament = Tournament.find(params[:id])
        if @tournament.display
          @tournament.update_attribute(:display, false)
        else
          @tournament.update_attribute(:display, true)
        end
    end

    private

    def require_approval
        current_user.approve
    end

end