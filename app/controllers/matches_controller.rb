class MatchesController < ApplicationController
    
    def matches_params
        params.require(:matches).permit(:group_name, :project_name)
    end
    
    def index
    end
    
    def new
        Match.algorithm
        redirect_to '/matches/show'
    end
    
    def show
        @matches = Match.all
    end
    
end
