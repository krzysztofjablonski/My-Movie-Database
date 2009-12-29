class MoviesController < ApplicationController

  def index
    @searchlogic = Movie.searchlogic(params[:search])
    @movies = @searchlogic.paginate :page => params[:page], :order => "id DESC", :per_page => 4
  end

  def new
    @page_title = "Dodaj film"
    @movie = Movie.new
  end

  def edit
    @page_title = "Edytuj film"
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = 'Film został dodany.'
      redirect_to(movies_url)
    else
      render :action => "new"
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
      flash[:notice] = 'Film został zapisany.'
      redirect_to(movies_url)
    else
      render :action => "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = 'Film został usunięty'
    redirect_to(movies_url)
  end
end
