Rails.application.routes.draw do
  resources :lists

  scope :lists do
    get '/lists/destroy' => 'sessions#destroy'
  end

  get 'home/trash_em'
  get 'home/trash_em_all'
  root 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
