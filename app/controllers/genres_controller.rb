class GenresController < ApplicationController
    def index
        @genres = Genre.all
        render :index
    end
    
    def show
        @genre = Genre.find(params[:id])
        render :show
    end

    def create
        @genre = Genre.find_or_create_by(
            name: params[:genre][:name]
        )
        redirect_to genre_path(@genre)
    end

    def new
        @genre = Genre.new
    end

    def edit
        @genre = Genre.find(params[:id])
        render :edit
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(
            name: params[:genre][:name]
        )
        redirect_to genre_path(@genre)
    end
end
