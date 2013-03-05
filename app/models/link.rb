class Link < ActiveRecord::Base

  attr_accessible :channel, :nick, :url
  default_scope :order => 'created_at DESC',
                :select => 'l.*, c.name AS channel_name',
                :joins => 'l, `channels` c',
                :conditions => 'l.channel_id = c.id'

  belongs_to :channel

  # piggy-backed attribute, with default_scope
  def channel_name
    @attributes['channel_name']
  end

  def self.by_channel(channel)
    where('l.channel_id = ?', channel.id)
  end
end
