class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show, :filt]
  before_filter :find_user, :except => [:index, :filt]
  
  def index
    @articles = Article.all
    @article = @articles.first
  end

  def show
    @article = @user.articles.find(params[:id])
    @meta_keys = @article.meta_keys
    @meta_descriptions = @article.meta_descriptions
    @meta_author = @article.user.name
    respond_to do |format|
       format.html
       format.js
    end
  end

  def new
    @article = Article.new
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

  def create    
    @article = current_user.articles.build(params[:article])
    
      if @article.save
        redirect_to user_article_path(@article.user, @article), notice: 'Article was successfully created.' 
      else
        render action: "new" 
      end
  end

  def update

    @article = current_user.articles.find(params[:id])

    if @article.update_attributes(params[:article])
        redirect_to user_article_path(@article.user, @article), notice: 'Article was successfully updated.' 
    else
        render action: "edit"
    end

  end

  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy
    redirect_to dashboard_user_path(current_user)
  end

  def publish
    @article = current_user.articles.find(params[:id])

    if @article.update_attributes(:is_published => true)
        redirect_to dashboard_user_path(current_user), notice: 'Article was successfully published.' 
    else
        @articles = current_user.articles
        render "users#dashboard"
    end
  end

  def filt
    @articles = Tag.find(params[:id])
    respond_to do |format|
      format.html 
      format.js 
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
