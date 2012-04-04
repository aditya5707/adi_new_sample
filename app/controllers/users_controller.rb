class UsersController < ApplicationController
  def user_index
    @user = User.all
  end

  def user_show
    @user = User.find(params[:id])
  end

  def user_new
    @user = User.new
  end

  def user_create
    logger.info "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx"
    @user = User.new(params[:user])
    if  @user.save
#      logger.info  @user.id.inspect
#      redirect_to @user
      flash[:success] = "Welcome to Adi's app"
     redirect_to user_show_user_path(@user.id)
    else
      render :action => :user_new
    end
  end

  def user_edit
  end

  def user_destroy
  end

  def user_update
  end
end
