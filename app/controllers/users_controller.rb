class UsersController < ApplicationController
  def user_index
    @user = User.all
  end

  def user_show
  end

  def user_new
    @user = User.new
  end

  def user_create

  end

  def user_edit
  end

  def user_destroy
  end

  def user_update
  end
end
