Rails.application.routes.draw do
  root to: 'application#index'

  get :sample, to: 'application#sample'
end
