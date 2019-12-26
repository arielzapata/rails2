Rails.application.routes.draw do
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "reports/info", to: "reports#info"
  get "mail/view", to: 'users#mail'
end
