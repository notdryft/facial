class Channel < ActiveRecord::Base

  attr_accessible :name, :topic

  has_many :links

  def links
    Link.by_channel(self)
  end
end
