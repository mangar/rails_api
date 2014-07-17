

Rails.application.routes.draw do

  namespace :api do 
    with_options only: :index do |index|
      index.resources :authors
      index.resources :books
    end
  end
  
  get  'login' => 'login#index'
  post 'login/auth' => 'login#auth'
  
end












# Rails.application.routes.draw do

#   with_options only: :index do |index|
#     index.resources :authors
#     index.resources :books
#   end
  
#   get  'login' => 'login#index'
#   post 'login/auth' => 'login#auth'

# end




# Rails.application.routes.draw do

#   with_options only: :index do |index|
#     index.resources :authors
#     index.resources :books
#   end
  
# end




# Rails.application.routes.draw do
  
#   resources :authors, only: :index
#   resources :books, only: :index

# end





# Rails.application.routes.draw do
  
#   resources :authors
#   resources :books

# end

