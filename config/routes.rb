Rails.application.routes.draw do
  resources :msgs
  get 'chat' => 'msgs#chatpage'
  root 'msgs#chatpage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server, at: '/cable'
end
