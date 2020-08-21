class UsersController < ApplicationController
    def new
        @user = User.new #Nueva instancia de la clase user, asi se podra usar en las vistas del usuario
    end
    
end