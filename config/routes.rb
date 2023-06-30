Rails.application.routes.draw do
  get 'meganes/index'
  resources :meganes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
