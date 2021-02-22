Rails.application.routes.draw do
 root 'pages#home'
 #make a get request for the about page send to pages controller about action
 get 'about', to: 'pages#about'
end
