Rails.application.routes.draw do
  resources :works

  resources :jobs
root :to => 'jobs#index'

end
