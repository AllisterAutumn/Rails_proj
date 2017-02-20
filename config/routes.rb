Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'
  get '/about', to: 'welcome#about'
   resources :sinners
end
