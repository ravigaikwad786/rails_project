class ArticlesController < ApplicationController
  def index
    @articles=Article.all
  end

  def show 
    @article=Article.find(params[:id])
  end

  def new 
    @article=Article.new
  end

  def create
    @article =Article.new (article_param)
    if @article.save
        redirect_to @article
    else
      render :new
    end
  end

  def save
    @article=Article.new(title:"..." , post:"...")
      if @article.save
        redirect_to @article
      else
        render :new
      end
  end

  private
    def article_param
      params.require(:article).permit(:title, :body)
    end

end
