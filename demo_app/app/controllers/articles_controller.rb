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

  def edit
    @article=Article.find(params[:id])
  end

  def update
     @article=Article.find(params[:id])
      if @article.update(article_param)
        redirect_to @article
      else
        reder :edit
      end
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end



  private
    def article_param
      params.require(:article).permit(:title, :body)
    end

end
