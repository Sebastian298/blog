class ArticlesController < ApplicationController

    before_action :set_article,only:[:show,:edit,:update,:destroy]  #ejecuta lo que hace el metodo set_article antes de realizar alguna accion el controlador
    
    #metodo para que se muestre un articulo segun el id que le mande el usuario
    def show
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def update
        set_article
        if @article.update(article_params)
            flash[:notice] = "Articulo editado con exito"
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            flash[:notice] = "Articulo agregado con exito."
            redirect_to @article #al hacer la insercion en la bd se redirige a una nueva pagina con la url del objeto article mostrando sus datos
        else
            render 'new'
        end
        
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private
    def set_article
        @article = Article.find(params[:id])
    end
    
    def article_params
        params.require(:article).permit(:tittle,:description)
    end
    
    
    
end