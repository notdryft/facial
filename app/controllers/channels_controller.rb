class ChannelsController < ApplicationController

  def show
    @channel = Channel.find(params[:id])
    @links = @channel.links
  end
end
