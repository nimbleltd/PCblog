class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # binding.pry
  end

  def new
    @article = Article.new
  end

  def create
    # binding.pry
    @article = Article.new(params[:article])
    # @article.save!
    if @article.save
      flash[:message] = "Article '#{@article.title}' was created"
      redirect_to articles_path
    else
      flash[:error] = 'Problem saving article!'
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.new
    # binding.pry
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    @article.save!
    flash[:message] = "Article '#{@article.title}' was updated"
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:message] = "Article '#{@article.title}' was destroyed"
    redirect_to articles_path
  end

end
