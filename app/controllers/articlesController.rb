class ArticlesController < ApplicationController
  def index
    articles = Article.recent # retorna los articulos en orden
    # paginated = paginator.call(
    #   articles,
    #   params: pagination_params,
    #   base_url: request.url.to_s
    # )
    render json: serializer.new(articles), status: :ok
  end

  def serializer
    ArticleSerializer
  end
 
  def show;end

  def paginator
    JSOM::Pagination::Paginator.new
  end

  def pagination_params
    params.permit![:page]
  end

end
