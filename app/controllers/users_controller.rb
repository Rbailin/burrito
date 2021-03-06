class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params.require(:user).permit(:username, :password))
	if @user.save
		redirect_to users_path
	else
		render action: "index"
	end
	end
end