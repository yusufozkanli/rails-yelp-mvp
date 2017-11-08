Rails.application.routes.draw do

  resources :restaurants, only:[:index, :new, :show, :create] do
    resources :reviews, only: [ :new, :create, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
