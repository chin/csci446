Articles::Application.routes.draw do
  resources :authors

  resources :articles
  get 'articles/index'

  
  root :to => 'articles#index'

end
