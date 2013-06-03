class Comment < ActiveRecord::Base
  attr_accessible :title, :body, :author_name, :article_id, :author_email, :author_url
  belongs_to :article
end
