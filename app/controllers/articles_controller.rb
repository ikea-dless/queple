class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @article = Article.new
    @genre = Genre.all
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to article_path(@article), flash: { success: '保存しました' }
    else
      render 'new'
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def index
    @articles = Article.all
  end

  def search
    @articles = Article.where('body like :q OR title like :q', q: "%#{params[:q]}%")
    render :index
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :genre_id)
  end
end
