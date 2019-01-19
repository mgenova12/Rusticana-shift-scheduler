Rails.application.routes.draw do
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  namespace :api do
      namespace :v1 do
        get '/employees' => 'employees#index'
        post '/employees' => 'employees#create'

        get '/roles' => 'roles#index'

        get '/employee_roles' => 'employee_roles#index'
        post '/employee_roles' => 'employee_roles#create'
      end
  end

end
