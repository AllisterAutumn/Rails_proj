Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'
  get '/about', to: 'welcome#about'
   get '/people/:id', to: 'welcome#person'
end
