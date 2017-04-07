# frozen_string_literal: true

Rails.application.routes.draw do
  mount BootstrapLeather::Engine => '/bootstrap_leather'
end
