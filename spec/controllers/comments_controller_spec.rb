require 'spec_helper'

describe CommentsController do

	def valid_attributes
   		{ :comment => "MyComment", :post_id => 'PostId' }
  	end

	def valid_session
    	{}
  	end

  	#it { should render_template(:partial => '_new') }

  	it "valid istance @comment" do
  		@comment = Comment.new
  		@comment.should be_valid
  	end

  	describe "GET _new" do
  		it "assigns a new comment as @comment" do
  			get :_new, {}, valid_session
  			assigns(:comment).should be_a_new(Comment)
  	end

  end

end
