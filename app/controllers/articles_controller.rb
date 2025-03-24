class ArticlesController < ApplicationController
  def index
    @articles = Article.order(published_at: :desc)
    @live_scores = LiveScore.order(match_time: :desc).limit(5) # Ambil 5 pertandingan terbaru
  end

  def show
    @article = Article.find(params[:id])
    @article.increment!(:views) # Menambah views setiap kali dibuka
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Artikel berhasil dibuat!"
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :image, :published_at)
  end
end
