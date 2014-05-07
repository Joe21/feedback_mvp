FeedbackMvp::Application.routes.draw do

  root :to => 'feedbacks#index'

  resources :feedbacks

  get '/presentation' => 'presentations#index', as: 'presentation'
  get '/feedbacks/:id/delete' => 'feedbacks#destroy', as: 'destroy'
end


# Rake routes
#          root        /                               feedbacks#index
#     feedbacks GET    /feedbacks(.:format)            feedbacks#index
#               POST   /feedbacks(.:format)            feedbacks#create
#  new_feedback GET    /feedbacks/new(.:format)        feedbacks#new
# edit_feedback GET    /feedbacks/:id/edit(.:format)   feedbacks#edit
#      feedback GET    /feedbacks/:id(.:format)        feedbacks#show
#               PUT    /feedbacks/:id(.:format)        feedbacks#update
#               DELETE /feedbacks/:id(.:format)        feedbacks#destroy
#  presentation GET    /presentation(.:format)         presentation#index
#       destroy GET    /feedbacks/:id/delete(.:format) feedbacks#destroy