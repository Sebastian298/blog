class ArticlesController < ApplicationController
    
    #metodo para que se muestren los articulos segun lo requerido
    def show
        @article = Article.find(
        params[:id]
        )
    end
end