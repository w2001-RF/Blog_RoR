Rails.application.routes.draw do
  root 'pages#home'
  get 'aide'        => 'pages#aide'
  get 'contact'     => 'pages#contact'
  get 'inscription' => 'utilisateurs#new'

  resources :utilisateurs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
