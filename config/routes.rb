Rails.application.routes.draw do
  resources :restaurants, only: [ :new, :create, :show, :index ] do
    resources :reviews, only: [ :new, :create, :show ]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
