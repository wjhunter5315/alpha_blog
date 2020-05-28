class ArticlesController < ApplicationController
    
    def show
        # byebug - initiates a terminal/console debugger
        @article = Article.find(params[:id]) #@ = instance variable
    end

    def index
        @articles = Article.all
    end

end