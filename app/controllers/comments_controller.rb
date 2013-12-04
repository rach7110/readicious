class CommentsController < ApplicationController
# require a user to be logged in before running create action:
before_filter :authenticate_user!, :only => [:create]

	def create
		# comment belongs to both user and link:
		@comment = current_user.comments.create(params[:comment].merge(link_id: params[:link_id]))
		# When a comment is created, redirect the user back to the same view:
		redirect_to :back
	end
end