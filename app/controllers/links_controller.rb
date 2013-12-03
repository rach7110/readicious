class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])
	end

	def new
		@link = Link.new
	end

	def create
		render text: params[:link].inspect
		# @link = Link.new(params[:link])
		# if @link.save
		# 	redirect_to @link
		# else
		# 	render action: "new"
		# end 
	end
end
