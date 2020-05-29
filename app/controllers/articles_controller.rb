class ArticlesController < ApplicationController
    
    def show
        # byebug - initiates a terminal/console debugger
        @article = Article.find(params[:id]) #@ = instance variable
    end

    def index
        @articles = Article.all
    end

    def new
    
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to article_path(@article) #OR just redirect_to @article
    end

end