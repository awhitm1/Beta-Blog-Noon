Rails.application.routes.draw do
  post '/login', to: 'sessions#create'

  scope '/web' do
    get 'bootstrap', to: 'web#bootstrap'
  end
  
  resources :blogs do
    post 'like'
    delete 'unlike'
  end
  resources :users, only: [:create]
end
