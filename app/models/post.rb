class Post < ActiveRecord::Base

  attr_accessible :content, :user_id, :comments_attributes

  validates_presence_of :content

  has_many :comments

  accepts_nested_attributes_for :comments, :reject_if => :all_blank, :allow_destroy => true

end