#encoding: utf-8
require 'spec_helper'

describe Post, "#post" do

	before(:each) do
		@post = FactoryGirl.create :post_teste
	end

	#let :post do
	#	FactoryGirl.create :post
	#end

    describe "possui muitos comentários" do
        it { should have_many(:comments) }
    end

    it "has be valid factory" do
  		@post.should be_valid
    end

    it "has be valid search @post" do
    	#posts = Post.find_by_title("Teste")
    	@post.title.should_not eq("Test")
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

end
