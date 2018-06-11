Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "pages#home"
  get 'pages/home', to: 'pages#home'

  Rails.application.routes.draw do  post '/signatures/callbacks', to: 'signatures#callbacks' end

  Rails.application.routes.draw do
    resources :signatures, only: [:new, :create] do collection do post 'callbacks'
         end
          end
           end

end
