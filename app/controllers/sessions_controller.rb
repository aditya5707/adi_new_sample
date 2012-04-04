class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
#    logger.info user.id

      sign_in user
      redirect_to user_show_user_path(user.id)
#      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render :action => :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end


end
