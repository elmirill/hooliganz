Rails.application.routes.draw do

	devise_for :users, path_names: { edit: 'edit', sign_up: '' }
	
  resources :news
	resources :pictures, only: [:destroy]
	resources :galleries, only: [:show, :edit, :update, :new, :create]
	resources :trainings
	resources :core_settings, only: [:new, :create, :edit, :update]
	
  root 'static_pages#home'
	
	match '/training', to: 'trainings#show', via: 'get', id: 1
	match '/gallery', to: 'galleries#show', via: 'get'
	match '/gallery/edit', to: 'galleries#edit', via: 'get'
	match '/gallery/new', to: 'galleries#new', via: 'get'
	match '/send_form', to: 'contact_form_mailer#send_form', via: 'post'
	match '/edit_settings', to: 'core_settings#edit', via: 'get', id: 1

end
