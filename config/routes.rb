Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#home'

  get '/top_ten_avg' => 'index#top_ten_avg'
  get '/main_att_detail' => 'index#main_att_detail'
end
