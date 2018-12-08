class PagesController < ApplicationController

    def home
        @tournaments = Tournament.all.order("start_date desc")
    end

    def info
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

    private

    def require_approval
        current_user.approve
    end

end