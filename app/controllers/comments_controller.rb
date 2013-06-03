class CommentsController < ApplicationController
  def index
    # @comments = Article.all
  end

  def create
    @comment = Comment.new(params[:comment])
    # @article.save!
    if @comment.save
      #flash[:message] = "Comment '#{@comment.title}' was created"
      flash[:message] = "Comment '#{@comment.body}' was created"
      redirect_to articles_path(@comment.article)
    else
      flash[:error] = 'Problem saving comment!'
      render :new
    end
  end

  def destroy
  end
end
