Rails.application.routes.draw do
  get "/"=> "index#accueil"
  get "/accueil"=> "index#accueil"


  get "/contact"=> "index#contact"
  get "/photos"=> "index#photos"
end
