class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])
		@comment = @link.comments.build
		# build method creates a new comment that is already asssociated with @comment
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			redirect_to @link, notice: 'Arcticle was successfully added!'
		else
			render action: "new"
		end 
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		if @link.update_attributes(params[:link])
			redirect_to @link, notice: "Article was successfully updated!"
		else
			render action: "edit"
		end
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
		redirect_to root_path
	end
	
end
