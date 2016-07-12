Rails.application.routes.draw do
 devise_for :users,  path_names: { sign_in: 'welcome', sign_up: 'register' }, controllers: { sessions: 'users/sessions',  omniauth_callbacks: 'users/omniauth_callbacks' }
 devise_scope :user do
   get 'users/login', to: 'users/sessions#login', as: 'custom_login_page'
 end

 root 'home#index'
end
