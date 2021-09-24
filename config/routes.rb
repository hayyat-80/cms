Rails.application.routes.draw do
  root "subjects#index"

  get 'admin', :to =>'access#index'

  match ':controller(/:action(/:id))', :via => [:get, :post, :put, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end