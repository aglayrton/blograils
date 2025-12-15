Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :categories, except:[:show] #essa ultima rota nao vai ser visualizada
  resources :articles
end
