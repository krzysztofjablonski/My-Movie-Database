class ActorsController < ApplicationController

  def index
    @page_title = 'Aktorzy'
    @searchlogic = Actor.searchlogic(params[:search])
    @actors = @searchlogic.paginate :page => params[:page], :order => "id DESC", :per_page => 10
  end

  def new
    @page_title = 'Nowy aktor'
    @actor = Actor.new
  end

  def edit
    @page_title = 'Edytuj aktora'
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new(params[:actor])
    if @actor.save
      flash[:notice] = 'Aktor został dodany.'
      redirect_to actors_url
    else
      render :action => "new" 
    end
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update_attributes(params[:actor])
      flash[:notice] = 'Aktor został zapisany.'
      redirect_to actors_url
    else
      render :action => "edit" 
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    flash[:notice] = 'Aktor został usunięty.'
    redirect_to(actors_url) 
  end
end
