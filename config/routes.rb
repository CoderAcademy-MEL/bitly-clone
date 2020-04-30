Rails.application.routes.draw do
  get "/links", to: "links#new"
  post "/links", to: "links#create"
  get "/:base_36", to: "links#show" 
end
