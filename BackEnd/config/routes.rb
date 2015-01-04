PostsApp::Application.routes.draw do
  resources :users
  resources :tags
  resources :posts
  resource :session
end
