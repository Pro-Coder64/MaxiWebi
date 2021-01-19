Rails.application.routes.draw do
  root 'pages#home'

  resources :logins, only: [:new, :create] do 
    collection do
      delete :destroy
      end
  end
end