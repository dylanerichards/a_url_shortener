Rails.application.routes.draw do
  root "urls#new"

  resources :urls

  get "/:short_url", to: "redirects#redirect"

  post "/shorten", to: "urls#create"
end
