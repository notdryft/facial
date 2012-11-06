class Channel < ActiveRecord::Base

  attr_accessible :name, :topic

  has_many :links
end
