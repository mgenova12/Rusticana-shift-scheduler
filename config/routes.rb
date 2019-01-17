Rails.application.routes.draw do
  
  namespace :api do
      namespace :v1 do
        get '/employees' => 'employees#index'
        post '/employees' => 'employees#create'
      end
  end

end
