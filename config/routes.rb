Rails.application.routes.draw do
  devise_for :users
  
  get 'meganes/index'
  resources :meganes
  resources :csv_exports, only: [] do
    collection do
      get 'export'
    end
    end

end
