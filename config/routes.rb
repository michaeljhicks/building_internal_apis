Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :author, only: %i[index show] do 
        resources :books, only: %i[index show create update destroy]
      end
    end 
    
    namespace :v2 do 
      resources :authors do 
        resources :books, only: %i[index]
      end 
    end 
  end 
end
