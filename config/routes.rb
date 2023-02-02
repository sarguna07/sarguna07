Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :universes, only: [:create, :index]
  resources :students, only: [:create] do
    get :student_in_all_universe, on: :collection
  end
end
