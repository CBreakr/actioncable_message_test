Rails.application.routes.draw do
  resources :messages, only: [:create]
  resources :chat_rooms, only: [:index, :create, :show]

  mount ActionCable.server => '/cable'
end
