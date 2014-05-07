FeedbackMvp::Application.routes.draw do

  root :to => 'feedbacks#index'

  resources :feedbacks do
    resources :images
  end

  get '/feedbacks/:id/delete' => 'feedbacks#destroy', as: 'destroy'
end


# Rake routes

#     feedback_images GET    /feedbacks/:feedback_id/images(.:format)          images#index
#                     POST   /feedbacks/:feedback_id/images(.:format)          images#create
#  new_feedback_image GET    /feedbacks/:feedback_id/images/new(.:format)      images#new
# edit_feedback_image GET    /feedbacks/:feedback_id/images/:id/edit(.:format) images#edit
#      feedback_image GET    /feedbacks/:feedback_id/images/:id(.:format)      images#show
#                     PUT    /feedbacks/:feedback_id/images/:id(.:format)      images#update
#                     DELETE /feedbacks/:feedback_id/images/:id(.:format)      images#destroy
#           feedbacks GET    /feedbacks(.:format)                              feedbacks#index
#                     POST   /feedbacks(.:format)                              feedbacks#create
#        new_feedback GET    /feedbacks/new(.:format)                          feedbacks#new
#       edit_feedback GET    /feedbacks/:id/edit(.:format)                     feedbacks#edit
#            feedback GET    /feedbacks/:id(.:format)                          feedbacks#show
#                     PUT    /feedbacks/:id(.:format)                          feedbacks#update
#                     DELETE /feedbacks/:id(.:format)                          feedbacks#destroy
#             destroy GET    /feedbacks/:id/delete(.:format)                   feedbacks#destroy