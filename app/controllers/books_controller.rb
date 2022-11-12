class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.all 
    @books = Book.new
    @user = current_user
  end

  def show
  end
  
  def create
     @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: "You have created book successfully."
    else
      render :new
    end
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
