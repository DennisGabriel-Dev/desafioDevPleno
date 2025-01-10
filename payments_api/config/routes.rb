Rails.application.routes.draw do
  post "/sign_up", to: "users#create"
  post "/login", to: "auth#login"
  post "/create_seller", to: "sellers#create_seller"
end
