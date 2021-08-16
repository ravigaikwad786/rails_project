class ArticlesController < ApplicationController
  def index
    @articles = Artical.all
  end

  def show 
    @articles =Artical.find(params[:id])
  end

  
end
