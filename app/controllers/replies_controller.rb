class RepliesController < ApplicationController
    def create
        @thought = Thought.find(params[:thought_id])
        @reply = @thought.replies.build(reply_params)
        @reply.user = current_user
        if @reply.save
            redirect_to book_thought_path(@thought.book, @thought) 
        else
            raise @reply.errors.inspect
            render :'/thoughts/show'    
        end
    end

    private
    def reply_params
        params.require(:reply).permit(:content, :spoiler, :associated_page)    
    end
end
