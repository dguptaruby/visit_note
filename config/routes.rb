Rails.application.routes.draw do
  resources :notes
  resources :therapists
  root to: "notes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
