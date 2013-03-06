class ChannelsController < ApplicationController

  def show
    if params[:page].nil?
      params[:page] = 1
    end

    channel = Channel.find(params[:id])

    @page = {
        :channel => channel,
        :links_count => channel.links.count
    }

    @links = channel.links.page(params[:page]).per(10)
  end
end
