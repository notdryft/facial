class LinksController < ApplicationController

  def index
    list

    render('list')
  end

  def show
    @link = Link.unscoped.find(params[:id])
  end

  def list
    if params[:page].nil?
      params[:page] = 1
    end

    @count = Link.unscoped.count
    @links = Link.page(params[:page]).per(10)
  end

  def edit
    @link = Link.unscoped.find(params[:id])
  end

  def update
    @link = Link.unscoped.find(params[:id])
    @link.sfw = params[:link][:sfw]
    @link.archived = params[:link][:archived]
    @link.pending = params[:link][:pending]

    if @link.save
      flash[:notice] = t :updated_link

      redirect_to(:action => 'show', :id => @link.id)
    end
  end

  def delete
    @link = Link.unscoped.find(params[:id])
  end

  def destroy
    Link.unscoped.find(params[:id]).destroy

    flash[:notice] = t :deleted_link
    redirect_to(:action => 'list')
  end
end
