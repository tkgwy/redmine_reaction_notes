# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  post '/journal_reaction/create', to: 'journal_reaction#create'
end
