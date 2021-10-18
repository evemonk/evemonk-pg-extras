Rails.application.routes.draw do
  mount RailsPgExtrasWeb::Engine, at: "/"
end
