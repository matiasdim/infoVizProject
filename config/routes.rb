Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#home'

  get '/top_ten_avg' => 'index#top_ten_avg'

  get '/main_att_pace' => 'index#main_att_pace'
  get '/main_att_shoot' => 'index#main_att_shoot'
  get '/main_att_pass' => 'index#main_att_pass'
  get '/main_att_dribble' => 'index#main_att_dribble'
  get '/main_att_defense' => 'index#main_att_defense'
  get '/main_att_physic' => 'index#main_att_physic'
end
