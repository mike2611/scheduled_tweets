Rails.application.routes.draw do
  # GET /about-us
  get "/about", to: "about#index", as: :about

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # this is the same as get "/", to "main#index"
  root to: "main#index"
end
