Rails.application.routes.draw do

devise_for :users
  
  get   '/levels'          => 'levels#index'
  get   '/levels/new'      => 'levels#new'
  post  '/levels'          => 'levels#create'
  get   '/levels/:id'      => 'levels#show'
  get   '/levels/:id/edit' => 'levels#edit'
  patch '/levels/:id'      => 'levels#update'
  delete'/levels/:id'      => 'levels#destroy'

  get '/activities'          => 'activities#index'
  get '/activities/new'      => 'activities#new'
  post'/activities'          => 'activities#create'
  get '/activities/:id'      => 'activities#show'
  get '/activities/:id/edit' => 'activities#edit'
  patch '/activities/:id'    => 'activities#update'
  delete'/activities/:id'    => 'activities#destroy'

  get   '/meals'          => 'meals#index'
  get   '/meals/new'      => 'meals#new'
  post  '/meals'          => 'meals#create'
  get   '/meals/:id'      => 'meals#show'
  get   '/meals/:id/edit' => 'meals#edit'
  patch '/meals/:id'      => 'meals#update'
  delete'/meals/:id'      => 'meals#destroy'

end
