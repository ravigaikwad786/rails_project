class ArticlesController < ApplicationController
  def index
    @articles = Artical.all
  end

  def show 
    @article =Artical.find(params[:id])
  end

  def new
    @article =Artical.new 
  end

  def create
    @article=Artical.new(title:"..." ,body:"...")

    if @article.save
      redirect_to @article
    else
      render:new
    end
  end
  

end
