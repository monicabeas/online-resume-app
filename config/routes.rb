Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/index" => "students#index"

  get "/show/:id" => "students#show"

  get "/twitter/:username" => "students#twitter"


end
