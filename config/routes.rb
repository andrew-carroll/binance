Rails.application.routes.draw do
  resources 'binance_data', only: [:create]

  get 'binance_data/between/:start/:end', to: "binance_data#between"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
