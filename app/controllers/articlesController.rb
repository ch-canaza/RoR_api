class ArticlesController < ApplicationController
  def index
    articles = Article.recent # retorna los articulos en orden
    render json: serializer.new(articles), status: :ok
  end

  def serializer
    ArticleSerializer
  end
 
  def show
   
  end
end
