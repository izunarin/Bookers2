class UsersController < ApplicationController
  def show
    @user = User
    @book = @user.book
  end
  
  def index
    @users = User.all
  end

  def edit
  end
end
