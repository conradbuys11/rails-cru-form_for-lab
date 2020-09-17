class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        render :index
    end
    
    def show
        @artist = Artist.find(params[:id])
        render :show
    end

    def create
        @artist = Artist.find_or_create_by(
            name: params[:artist][:name],
            bio: params[:artist][:bio]
        )
        redirect_to artist_path(@artist)
    end

    def new
        @artist = Artist.new
        render :new
    end

    def edit
        @artist = Artist.find(params[:id])
        render :edit
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(
            name: params[:artist][:name],
            bio: params[:artist][:bio]
        )
        redirect_to artist_path(@artist)
    end
end
