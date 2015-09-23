Rails.application.routes.draw do
  
  resources :banks, except: :show
end
