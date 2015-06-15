Nike::Application.routes.draw do
  resources :lane_agilities

  resources :vertical_tests

  resources :skills_challenges

  resources :shuttle_runs

  resources :standing_reaches

  resources :wingspans

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
  get 'lane_agilities_high_scores' => 'lane_agilities#high_scores'
  get 'shuttle_runs_high_scores' => 'shuttle_runs#high_scores'
  get 'skills_challenges_high_scores' => 'skills_challenges#high_scores'
  get 'standing_reaches_high_scores' => 'standing_reaches#high_scores'
  get 'vertical_tests_high_scores' => 'vertical_tests#high_scores'
  get 'wingspans_high_scores' => 'wingspans#high_scores'
  delete 'delete_all_controls' => 'controls#delete_all'
  delete 'delete_all_cp3s' => 'cp3s#delete_all'
  delete 'delete_all_melos' => 'melos#delete_all'
  delete 'delete_all_footworks' => 'footworks#delete_all'
  delete 'delete_all_verticals' => 'verticals#delete_all'
  delete 'delete_all_lane_agilities' => 'lane_agilities#delete_all'
  delete 'delete_all_shuttle_runs' => 'shuttle_runs#delete_all'
  delete 'delete_all_skills_challenges' => 'skills_challenges#delete_all'
  delete 'delete_all_standing_reaches' => 'standing_reaches#delete_all'
  delete 'delete_all_vertical_tests' => 'vertical_tests#delete_all'
  delete 'delete_all_wingspans' => 'wingspans#delete_all'
  

  resources :high_scores
  root 'high_scores#scores'

end
