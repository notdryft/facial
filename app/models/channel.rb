class Channel < ActiveRecord::Base

  has_many :links

  def links
    Link.by_channel(self)
  end
end
