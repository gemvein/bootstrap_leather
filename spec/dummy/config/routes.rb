# frozen_string_literal: true

Rails.application.routes.draw do
  resources :doo_dads
  mount BootstrapLeather::Engine => '/bootstrap_leather'
end
