Rails.application.routes.draw do
  root 'pages#welcome'
  get 'about', to: 'pages#about'
end
