class Post < ActiveRecord::Base
  attr_accessible :author, :title, :author, :content
  validates :title, :presence => true

  has_many :comments

  def is_equals_title?
  	title == "Teste2"
  end

  def hit(pins)
  end

end
