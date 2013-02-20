require 'spec_helper'

describe "comments/_new" do	

	describe "GET partial _new" do
    	it "assigns a _new as @comment" do
    		@comment = Comment.new
    		render :partial => "comments/new.html.erb", :locals => {:comment => @comment}
    	end
  	end

end