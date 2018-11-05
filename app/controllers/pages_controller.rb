class PagesController < ApplicationController

    def home
        @matches = Match.all.order("created_at desc")
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

    def approval
        respond_to :html, :js
        @user = User.find(params[:id])
        if @user.approval == true
          @user.approval = false
        else
          @user.approval = true
        end
        @user.save
    end

end