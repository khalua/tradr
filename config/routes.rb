R20130308Tradr::Application.routes.draw do

  root :to => 'welcome#index'

  resources :users, :only => [:edit, :new, :create, :index]
  resources :stocks do
    collection do
      get 'quote/:symbol', :action => 'quote'
    end
  end

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
