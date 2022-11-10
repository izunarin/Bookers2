class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.all 
  end

  def show
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def destroy
  end
end