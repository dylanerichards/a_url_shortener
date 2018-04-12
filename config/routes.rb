Rails.application.routes.draw do
  root "pages#home"

  post "/shorten", to: "urls#create"
end
