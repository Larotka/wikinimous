class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new()
  end

  def create
    article = Article.new(get_params)
    if article.save
      redirect_to articles_path
    else
      raise
    end
  end

  def destroy
    article = Article.find(params[:article_id])
    if article.destroy
      redirect_to articles_path
    else
      raise
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:article_id])
    if article.update(get_params)
      redirect_to articles_path
    else
      raise
    end
  end

  def get_params
    params.require(:article).permit(:title, :content)
  end
end
