class CommentsController < ApplicationController

	def _new
		@comment = Comment.new

		respond_to do |format|
      		format.html # new.html.erb
     		format.json { render json: @post }
    	end
	end

	def create
		@comment = Comment.new(params[:comment])

		respond_to do |format|
	      if @comment.save
	        format.html { redirect_to :back, notice: 'Comment was successfully created.' }
	        format.json { render json: @comment, status: :created, location: @comment }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      end
    	end
    end

end
