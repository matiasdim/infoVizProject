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

  get '/defense_rwb' => 'index#defense_rwb'
  get '/defense_cb' => 'index#defense_cb'
  get '/defense_lwb' => 'index#defense_lwb'
  get '/midfield_cdm' => 'index#midfield_cdm'
  get '/midfield_cm' => 'index#midfield_cm'
  get '/midfield_lm' => 'index#midfield_lm'
  get '/midfield_rm' => 'index#midfield_rm'
  get '/midfield_cam' => 'index#midfield_cam'
  get '/forward_rw' => 'index#forward_rw'
  get '/forward_lwb' => 'index#forward_lwb'
  get '/forward_st' => 'index#forward_st'

  get '/overall_vs_dribble' => 'index#overall_vs_dribble'
  get '/overall_vs_pace' => 'index#overall_vs_pace'
  get '/overall_vs_defense' => 'index#overall_vs_defense'
  
end
