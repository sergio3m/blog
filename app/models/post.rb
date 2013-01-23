class Post < ActiveRecord::Base
  attr_accessible :author, :content, :title
  validates :title, :presence => true

  has_many :comment

  def is_equals_title?
  	title == "Teste2"
  end

  def hit(pins)
  end

  def post
  	0
  end

  def validates_presence_of?
    !title.blank?
  end

end
