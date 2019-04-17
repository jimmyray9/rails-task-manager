Rails.application.routes.draw do
  get "tasks/", to: "tasks#index", as: :tasks

  get    "tasks/new", to: "tasks#new", as: :new
  post   "tasks", to: "tasks#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "tasks/:id", to: "tasks#show", as: :task

  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch  "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy", as: :destroy
end
