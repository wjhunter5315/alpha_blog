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
        render plain: params[:article]
    end

end