class RegistrationController < ApplicationController

	def sign_up
	  
	end

	def create_user
	  @user = User.new(user_params)
	  if @user.save 
       render 'home/welcome'
    else
      @sign_errs = {}
      @user.errors.full_messages.each do |err| 
       @sign_errs[err.split[0].downcase] = err
      end 
      render 'home/welcome'
	  end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end

end