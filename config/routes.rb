Rails.application.routes.draw do
  
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
