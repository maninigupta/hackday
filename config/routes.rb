Rails.application.routes.draw do
  get 'users/new'
  get 'signup' => 'users#new'
  resources :users

  root 'static_pages#home'

  get 'sponsor_deck_page' => 'static_pages#sponsor_deck_page'
  get 'participant_info_page' => 'static_pages#participant_info_page'
  get 'participant_videos' => 'static_pages#participant_videos'
  get 'sponsor_vidoes' => 'static_pages#sponsor_vidoes'
  get 'judge_videos' => 'static_pages#judge_videos'

end
