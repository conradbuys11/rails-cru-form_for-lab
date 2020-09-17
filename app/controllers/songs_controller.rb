class SongsController < ApplicationController
    def index
        @songs = Song.all
        render :index
    end
    
    def show
        @song = Song.find(params[:id])
        render :show
    end

    def create
        @song = Song.find_or_create_by(
            name: params[:song][:name],
            artist: Artist.find_or_create_by(name: params[:song][:artist_id]),
            genre: Genre.find_or_create_by(name: params[:song][:genre_id])
        )
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
        render :edit
    end

    def update
        @song = Song.find(params[:id])
        @song.update(
            name: params[:song][:name],
            artist: Artist.find_or_create_by(name: params[:song][:artist_id]),
            genre: Genre.find_or_create_by(name: params[:song][:genre_id])
        )
        redirect_to song_path(@song)
    end
end
