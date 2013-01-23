#encoding: utf-8
require 'spec_helper'

describe Post, "#post" do

	before(:each) do
		@post = FactoryGirl.create(:post_teste)
	end

	#let :post do
	#	FactoryGirl.create :post
	#end

    it "has be valid factory" do
  		@post.should be_valid
    end

    it "return 0 for all post created" do
    	20.times {@post.hit(1)}
    	@post.post.should eq(0)
    end

    it "should equals title" do
    	@post.title.equal?("Teste")
    end

    it "has be valid search @post" do
    	#posts = Post.find_by_title("Teste")
    	@post.title.should_not eq("Test")
    end

    it "has be uniq title" do
    	#post.error_on(:title).should == ["Title should be uniq."]
    end

    describe Post do
        it "requires a title" do
            post = Post.new
            post.should have(1).error_on(:title)
        end
    end

    describe "simple math" do
        it "provides a sum of two numbers" do
            (1 + 2).should == 3
        end
    end

    describe "something" do
        it "does something" do
            p example.metadata
        end
    end

end
