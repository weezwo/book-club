class ClubsController < ApplicationController
    before_action :set_club, only: [:show, :edit, :update, :destroy]
    
    def index
        @clubs = current_user.clubs
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def set_club
        @club = Club.find(params[:id])
    end
end
