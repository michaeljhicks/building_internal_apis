class Api::V2::BooksController < ApplicationController

  def index 
    books = Books.all
    render json: BookSerializer.format_books(books)
  end

end