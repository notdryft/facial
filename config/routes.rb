Rails.application.routes.draw do

  root :to => 'links#list'

  get 'links/page/:page' => 'links#list'
  get 'channels/show/:id/page/:page' => 'channels#show'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  get ':controller(/:action(/:id(.:format)))'
end
