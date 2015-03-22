class Link < ActiveRecord::Base

  default_scope {
    select('links.*, channels.name AS channel_name')
      .joins(:channel)
      .order(:created_at => :desc)
  }

  belongs_to :channel

  # piggy-backed attribute, with default_scope
  def channel_name
    read_attribute(:channel_name)
  end

  def self.by_channel(channel)
    where('l.channel_id = ?', channel.id)
  end
end
