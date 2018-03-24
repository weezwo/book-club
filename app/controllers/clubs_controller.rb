class ClubsController < ApplicationController
    before_action :set_club
    
    def show
    end

    private
    def set_club
        @club = Club.find(params[:id])
    end
end
