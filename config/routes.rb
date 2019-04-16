Rails.application.routes.draw do
  get "tasks", to: "tasks#index"

  get "tasks/yo", to: "tasks#show"
end
