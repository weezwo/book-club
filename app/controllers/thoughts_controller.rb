class ThoughtsController < ApplicationController

    def create
        @thought = current_user.thoughts.new(thought_params)
        @thought.book = Book.find(params[:book_id])
        if @thought.save
            flash[:message] = "SUCCESS!!"
        else
            flash[:message] = "Nah; #{@thought.errors.full_messages.join(" and ")}."
        end
        redirect_to "/books/#{params[:book_id]}"
    end

    def show
        @thought = Thought.find(params[:id])
        @reply = Reply.new
        @user_book = UserBook.find_by(book: params[:book_id], user: current_user.id)
    end

    private
    def thought_params
        params.require(:thought).permit(:title, :content, :associated_page)
    end
end
