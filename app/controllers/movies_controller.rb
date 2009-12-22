class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = 'Movie was successfully created.'
      redirect_to(movies_url)
    else
      render :action => "new"
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
      flash[:notice] = 'Movie was successfully updated.'
      redirect_to(movies_url)
    else
      render :action => "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to(movies_url)
  end
end
