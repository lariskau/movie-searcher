Rails.application.routes.draw do
  root 'static#redirect'
  get 'movie' => 'static#movie'
  post 'movie' => 'static#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
