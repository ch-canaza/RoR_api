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
 
  def show
  article = Article.find(params[:id])
  render json: serializer.new(article)
  # or use  gem jsonapiErrorsHandler
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message, detail: "here will be nicely formatted response" }
  end

  def paginator
    JSOM::Pagination::Paginator.new
  end

  def pagination_params
    params.permit![:page]
  end

end
