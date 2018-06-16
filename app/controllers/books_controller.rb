class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy, :update_page]
    
    def new
    end

    def create
    end

    def show
        @thought = Thought.new
        @user_book = UserBook.find_or_initialize_by(book: @book, user: current_user)
        @thoughts = @book.thoughts.where("associated_page <= ?", @user_book.associated_page)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def update_page
        @user_book = UserBook.find_or_create_by(book: @book, user: current_user)
        @user_book.update(associated_page: params[:page])
        redirect_back(fallback_location: book_path(@book))
    end

    private
    def set_book
        @book = Book.find(params[:id])
    end
end
