Rails.application.routes.draw do
  # mount Attachinary::Engine => "/attachinary"
  # devise_for :users
  root to: 'pages#home'
  get '/en' => 'pages#home'
  get "/team" => 'pages#team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # scope "/:locale" do
  scope "(:locale)", locale: /en|fr|da|ar|ja/ do
    resources :tasks
  end
  # get "/tasks" => tasks#index
  # get "/tasks/:id" => tasks#show
  # get "/tasks/new" => tasks#new
  # post "/tasks" => tasks#create
  # get "/tasks/:id/edit" => tasks#edit
  # patch "/tasks/:id" => tasks#update
  # delete "/tasks/:id" => tasks#destroy
end
