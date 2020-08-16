Rails.application.routes.draw do
  root 'pages#welcome'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show,:index] #cuando haga una peticion el cliente dependiendo de que metodo ira al controlador y buscara index o show
end
