class UsersController < ApplicationController
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
  @book = User.find(params[:id])
  @book.update(user_params)
  redirect_to book_path(@user.id), notice: "You have update user successfully."
  end



end
