class ArticleNewsController < ApplicationController
  before_action :set_article_news, only: %i[ show edit update destroy ]

  # GET /article_news or /article_news.json
  def index
    @article_news = ArticleNew.all
  end

  # GET /article_news/1 or /article_news/1.json
  def show
  end

  # GET /article_news/new
  def new
    @article_news = ArticleNew.new
  end

  # GET /article_news/1/edit
  def edit
  end

  # POST /article_news or /article_news.json
  def create
    @article_news = ArticleNew.new(article_news_params)

    respond_to do |format|
      if @article_news.save
        format.html { redirect_to @article_news, notice: "Article new was successfully created." }
        format.json { render :show, status: :created, location: @article_news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_news/1 or /article_news/1.json
  def update
    respond_to do |format|
      if @article_news.update(article_news_params)
        format.html { redirect_to @article_news, notice: "Article new was successfully updated." }
        format.json { render :show, status: :ok, location: @article_news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_news/1 or /article_news/1.json
  def destroy
    @article_news.destroy
    respond_to do |format|
      format.html { redirect_to article_news_url, notice: "Article new was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_news
      @article_news = ArticleNew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_news_params
      params.require(:article_news).permit(:title, :description)
    end
end
