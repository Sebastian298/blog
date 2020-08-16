class ArticlesController < ApplicationController
    
    #metodo para que se muestre un articulo segun el id que le mande el usuario
    def show
        @article = Article.find(
        params[:id]
        )
    end

    def index
        @articles = Article.all
    end
end