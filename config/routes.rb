Rails.application.routes.draw do
  
  get 'signup' => 'users#new'

  resources :users

  root 'static_pages#home'

  get 'hackers'		=> 'static_pages#participants'
  get 'sponsors'			=> 'static_pages#sponsors'
  get 'judges'				=> 'static_pages#judges'

  get 'sponsorInfo'   		=> 'static_pages#sponsor_deck'

end
