Rails.application.routes.draw do
  root 'todos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "todos" , :to=> "todos#create"
  # match "todos/errors", to: "todos#errors", via: :get 
  get '/update/:id' => 'todos#update', as: :update
  get '/delete/:id' => 'todos#delete', as: :delete

end
