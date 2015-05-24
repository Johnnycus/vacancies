Rails.application.routes.draw do
  root 'krg#index'
  
  get '/olx' => 'krg#index'
  get '/hh' => 'krg#hunting'
end
