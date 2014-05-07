FeedbackMvp::Application.routes.draw do

  root :to => 'feedbacks#index'

  resources :feedbacks
  resources :images

  get '/feedbacks/:id/delete' => 'feedbacks#destroy', as: 'destroy'
end


# Rake routes

#          root        /                             feedbacks#index
#     feedbacks GET    /feedbacks(.:format)          feedbacks#index
#               POST   /feedbacks(.:format)          feedbacks#create
#  new_feedback GET    /feedbacks/new(.:format)      feedbacks#new
# edit_feedback GET    /feedbacks/:id/edit(.:format) feedbacks#edit
#      feedback GET    /feedbacks/:id(.:format)      feedbacks#show
#               PUT    /feedbacks/:id(.:format)      feedbacks#update
#               DELETE /feedbacks/:id(.:format)      feedbacks#destroy
#        images GET    /images(.:format)             images#index
#               POST   /images(.:format)             images#create
#     new_image GET    /images/new(.:format)         images#new
#    edit_image GET    /images/:id/edit(.:format)    images#edit
#         image GET    /images/:id(.:format)         images#show
#               PUT    /images/:id(.:format)         images#update
#               DELETE /images/:id(.:format)         images#destroy