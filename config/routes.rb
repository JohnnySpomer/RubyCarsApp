Rails.application.routes.draw do
  get 'locations/view'
  get 'about/show'
  get 'vehicle_types/show'
  get 'models/show'
  get 'manufacturers', to: "manufacturers#index", as: 'manufacturers'
  get 'manufacturers/:id', to: "manufacturers#show", as: 'manufacturer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
