# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  namespace :admin do
    namespace :solidus_importer do
      resources :imports, only: [:create, :index, :new, :show] do
        resources :import_rows, only: [:show]
      end
    end
  end
end
