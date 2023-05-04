Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/applicants' => 'applicants#index'
  get '/applicants/new' => 'applicants#new'
  get '/applicants/:id' => 'applicants#show'
  post '/applicants' => 'applicants#create'
  get '/applicants/:id/edit' => 'applicants#edit'
  patch '/applicants/:id' => 'applicants#update'
  # delete '/applicants/:id' => 'applicants#destroy'
end
