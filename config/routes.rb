Rails.application.routes.draw do
  devise_for :users
  # トップページ
  root "top#index"
end
