class ArticlesController < ApplicationController
    
    def show
        # byebug
        @article = Article.find(params[:id]) #@ = instance variable
    end

end