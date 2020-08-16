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

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(
            params[:id]
            )
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:tittle,:description))
            flash[:notice] = "Articulo editado con exito"
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create
        @article = Article.new(params.require(:article).permit(:tittle,:description))

        if @article.save
            flash[:notice] = "Articulo agregado con exito."
            redirect_to @article #al hacer la insercion en la bd se redirige a una nueva pagina con la url del objeto article mostrando sus datos
        else
            render 'new'
        end
        
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    
    
end