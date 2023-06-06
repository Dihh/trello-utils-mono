Rails.application.routes.draw do
  resources :recurrent_cards
  resources :labels
  resources :analyses do
    get "/:id/edit_date_values", to: "analyses#edit_date_values", on: :collection, as: "edit_date_values"
    post "/:id/update_date_values", to: "analyses#update_date_values", on: :collection, as: "update_date_values"
  end
  resources :lists
  resources :boards do
    get "/:id/execute_recurrent_cards", to: "boards#execute_recurrent_cards", on: :collection, as: "execute_recurrent_cards"
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
