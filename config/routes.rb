Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'download_certificate', to: 'answers#download_certificate', as: 'download_certificate'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  resources :courses, only: [:index, :show] do
    resources :quizzes, only: [:show]
  end

  resources :answers, only: [:create, :show]
end
