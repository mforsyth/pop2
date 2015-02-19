Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'

  get '/about_pop', controller: :about_pop, action: :index 
  get '/about_pop/board', controller: :about_pop, action: :board 
  get '/about_pop/faq', controller: :about_pop, action: :faq 
  get '/about_pop/manifesto', controller: :about_pop, action: :manifesto 
  get '/about_pop/staff', controller: :about_pop, action: :staff 

  get '/donate', controller: :donate, action: :index 
  get '/donate/levels', controller: :donate, action: :levels 

  get '/orchards', controller: :orchards, action: :index 
  get '/orchards/map', controller: :orchards, action: :map 
  get '/orchards/develop', controller: :orchards, action: :develop 
  get '/orchards/permaculture', controller: :orchards, action: :permaculture 
  get '/orchards/plants', controller: :orchards, action: :plants 
  get '/orchards/links', controller: :orchards, action: :links

  get '/volunteer/', controller: :volunteer, action: :index 
  get '/volunteer/signup', controller: :volunteer, action: :signup 
  get '/volunteer/schedule', controller: :volunteer, action: :schedule 
  get '/volunteer/committees', controller: :volunteer, action: :committees 

  get '/welcome/news', controller: :welcome, action: :news 

end
