TodoWithRspec::Application.routes.draw do
  get "/todos/new", to: "todos#new", as: "new_todo"
  get "/todos", to: "todos#index", as: "todos"
  post "/todos", to: "todos#create"


  



end
