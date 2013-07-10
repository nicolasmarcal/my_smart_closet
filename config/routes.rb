MySmartCloset::Application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :look
      get "look/gerar_look" => "look#gerar_look"
    end
  end
end
