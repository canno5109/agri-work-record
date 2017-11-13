Rails.application.routes.draw do
  resources :records
  root 'system#index'
  get 'system/midori'
  post "system/record" => "system#record"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
