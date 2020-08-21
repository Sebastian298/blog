Rails.application.routes.draw do
  root 'pages#welcome' #vista de inicio, cuando se entra a la pag
  get 'about', to: 'pages#about'
  resources :articles#cuando haga una peticion el cliente dependiendo de que metodo ira al controlador y lo buscara pra ejecutarlo
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end