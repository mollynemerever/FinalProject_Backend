class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session


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

  private

  def book_params
    params.require(:book).permit!
  end


end
