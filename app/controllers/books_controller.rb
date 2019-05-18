class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token



  def create
    if Book.find_by(googleId: book_params[:googleId]) #if bookexists
      @book = Book.find_by(googleId: book_params[:googleId])
      render json: @book, status: :accepted
    else
      @book = Book.new(book_params) #create book in db
      if @book.save #if book able to save/valid
        render json: @book, status: :accepted
      else
        render json: {errors: 'Failed to create book'}, status: :unprocessible_entity
      end
    end
  end

  def show #get specific book info
    if Book.find_by(id: params[:id])
      @book = Book.find_by(id: params[:id])

      render json: @book, status: :accepted
    else
      render json: {errors: 'Could not locate book in db'}, status: :unprocessible_entity
    end
  end

  private

  def book_params
    params.require(:book).permit!
  end


end
