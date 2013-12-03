class Link < ActiveRecord::Base
	belongs_to :user
	has_many :comments
  attr_accessible :title, :url
end
