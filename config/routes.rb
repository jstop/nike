Nike::Application.routes.draw do
  resources :melos

  resources :cp3s

  resources :verticals

  resources :controls

  resources :footworks

  resources :best_times

  get 'times' => 'best_times#times'
  get 'both' => 'best_times#both'
  get 'scores' => 'high_scores#scores'
  get 'controls_high_scores' => 'controls#high_scores'
  get 'cp3_high_scores' => 'cp3s#high_scores'
  get 'melo_high_scores' => 'melos#high_scores'
  get 'footworks_high_scores' => 'footworks#high_scores'
  get 'verticals_high_scores' => 'verticals#high_scores'
  delete 'delete_all_controls' => 'controls#delete_all'
  delete 'delete_all_cp3s' => 'cp3s#delete_all'
  delete 'delete_all_melos' => 'melos#delete_all'
  delete 'delete_all_footworks' => 'footworks#delete_all'
  delete 'delete_all_verticals' => 'verticals#delete_all'
  

  resources :high_scores
  root 'high_scores#scores'

end
