class Article < ActiveRecord::Base
  attr_accessible :title, :body
  validates :body, :title, :presence => true
  has_many :comments
end
