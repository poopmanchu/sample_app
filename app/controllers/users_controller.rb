class UsersController < ApplicationController
  
  def new
  	@title = "Sign up"
  	@user = User.new
  end
  
  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end
  
  def create
  	@user = User.new(params[:user])
  	if @user.save
  		#handle a successful save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user  #@user here equivalent to user_path(@user)
  	else
  		#handle a failed sign up
  		@title = "Sign up"
  		render 'new'
  	end
  end

end
