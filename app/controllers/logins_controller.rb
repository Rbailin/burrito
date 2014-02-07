class LoginsController < ApplicationController
	
	def new
		if current_user
			redirect_to orders_path
		else
			@user = User.new
	end
end


	def create
		user = User.find_by(username: params[:user][:username])
		if user.authenticated?(params[:user][:password])
			session[:user_id] = user.id
			redirect_to orders_path
		else
			render action: "index"
	end
end


	def destroy
		session[:user_id] = nil
		redirect_to new_login_path
	end
end

