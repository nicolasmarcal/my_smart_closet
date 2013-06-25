MySmartCloset::Application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :look
    end
  end
end
