Rails.application.routes.draw do

	devise_for :users, path_names: { edit: 'edit', sign_up: '' }
	
  resources :news
	resources :pictures, only: [:destroy]
	resources :galleries, only: [:show, :edit, :update, :new, :create]
	resources :core_settings, only: [:new, :create, :edit, :update]
	
  root 'static_pages#home'
	
  match '/about', to: 'static_pages#about', via: 'get'
  match '/training', to: 'static_pages#training', via: 'get'
	match '/gallery', to: 'galleries#show', via: 'get'
	match '/gallery/edit', to: 'galleries#edit', via: 'get'
	match '/gallery/new', to: 'galleries#new', via: 'get'
	match '/send_form', to: 'contact_form_mailer#send_form', via: 'post'
	get '/edit_settings', to: 'core_settings#edit', id: 1

end
