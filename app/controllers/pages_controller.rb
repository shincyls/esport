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
            @matches = Match.all
        when "2"
            @matches = Match.all
        when "3"
            @matches = Match.all
        when "4"
            @match_predictions = MatchPrediction.all
        else
            redirect_to root_url
        end
    end

end