class UsersController < ApplicationController

	def new 
		@user = User.new
	end

	def create
		params_user = params.require(:user).permit :email, :password, :password_confirmation

		@user = User.new(params_user)
		if @user.save
			redirect_to root_url, :notice => "Signed up!"
		else
			render "new"
		end
	end
end
