class LinksController < ApplicationController

  def index
    list

    render('list')
  end

  def show
    @link = Link.find(params[:id])
  end

  def list
    @links = Link.all
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    @link.sfw = params[:link][:sfw]
    @link.archived = params[:link][:archived]
    @link.pending = params[:link][:pending]

    if @link.save
      flash[:notice] = t :updated_link

      redirect_to(:action => 'show', :id => @link.id)
    end
  end

  def delete
    @link = Link.find(params[:id])
  end

  def destroy
    Link.find(params[:id]).destroy

    flash[:notice] = t :deleted_link
    redirect_to(:action => 'list')
  end
end
