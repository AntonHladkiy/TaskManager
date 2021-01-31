Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  get '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
  get '/tasks/:id/uncomplete', to: 'tasks#uncomplete', as: 'uncomplete_task'
  resources :tasks do
    collection do
      delete :batch_delete
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
