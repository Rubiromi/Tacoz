Rails.application.routes.draw do

  root 'site#index'
  get '/about' => 'site#about'
  get '/contact' => 'site#contact'
  post '/contact-submit' => 'site#contact_submit', as: :submit_contact
  resources :menu_items, only: [:index, :show], path: 'our-food' #we don't want all 7 routes. we just need these two.

  namespace :admin do
    get '/' => 'base#index'

    resources :menu_items
  end


end
