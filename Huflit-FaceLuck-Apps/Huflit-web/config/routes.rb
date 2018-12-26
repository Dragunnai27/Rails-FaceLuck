Rails.application.routes.draw do

  root "pages#home"
  get "/display", to:"posts#display"
  resources :posts do 
    resources :comments
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
