class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :correct_user, only: [:edit, :update]
  
  def show
    @booknew = Book.new
    @user = User.find(params[:id])
    @book = @user.books
  end


  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    @book = @user.books
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(current_user.id), notice: "You have update user successfully."
    else
    render :edit
    end
  end

 private

 def user_params
   params.require(:user).permit(:name, :image, :introduction)
 end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(books_path) unless @user == current_user
  end
  
end
