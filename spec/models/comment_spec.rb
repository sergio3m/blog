require 'spec_helper'

describe Comment do

	before(:each) do
		@comment = FactoryGirl.create(:comment)
	end

  	it { should belong_to(:post) }

  	it "valid istance @comment" do
  		@comment.should be_valid
  	end

  	it "can't be blanck" do
  		@comment.should have(1).error_on(:comment, :post_id)
  	end

end
