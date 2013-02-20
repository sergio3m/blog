class Comment < ActiveRecord::Base
	
  attr_accessible :comment, :post_id
  belongs_to :post
  validates :post_id, :comment, :presence => true

end
