class Comment < ActiveRecord::Base

  attr_accessible :content, :post_id

  validates_presence_of :content

  belongs_to :comments



end