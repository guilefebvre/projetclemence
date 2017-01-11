Rails.application.routes.draw do

root :to => "index#accueil"
  get "/"=> "index#accueil"
  get "/accueil"=> "index#accueil"


  get "/contact"=> "index#contact"
  get "/photos"=> "index#photos"
end
