class Link < ActiveRecord::Base

  attr_accessible :channel, :nick, :url
  default_scope :order => 'created_at DESC'

  belongs_to :channel
end
