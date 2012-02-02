Testapp4::Application.routes.draw do
    
    root :to => 'events#new'
    resources :events
    match ':controller(/:action(/:id(.:format)))'
end
