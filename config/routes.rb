Rails.application.routes.draw do
  root 'pages#home'
  get 'aide'=> 'pge#aide'
  get 'contact' => 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
