Rails.application.routes.draw do
  get 'static/Movie'
  get 'home/index'
  root 'static#Movie'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
