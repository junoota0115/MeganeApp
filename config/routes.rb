Rails.application.routes.draw do
  get 'meganes/index'
  resources :meganes
  resources :csv_exports, only: [] do
    collection do
      get 'export'
    end
    end

end
