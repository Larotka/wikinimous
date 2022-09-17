Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles, only: %i[new create index show edit] do
    delete "delete", to: "articles#destroy"
    patch "update", to: "articles#update"
  end
end
