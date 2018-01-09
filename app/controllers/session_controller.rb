class SessionController < ApplicationController

	def create
      @user = User.find_by_email(params[:email].strip)
      @inputed = {}
      @inputed[:email] = params[:email].strip
      @inputed[:password] = params[:password].strip
      @login_errs = {}
    if @user..
      
      if @user.check_password?(params[:password].strip)
        log_in(@user) 
      else
        @login_errs[:password] = 'invalid password'
        render 'home/welcome'
      end
    else
      @login_errs[:email] = 'invalid email'
      render 'home/welcome'
    end
  end

  def destroy
    log_out
  end

  private

  def log_in(user)
    session[:user_id] = user.id
    redirect_to user_page_path
  end

  def log_out 
    session[:user_id] = nil
    redirect_to home_path
  end

end
