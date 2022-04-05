# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsPgExtras::Web::Engine, at: "/"
end
