Nike::Application.routes.draw do
  resources :verticals

  resources :controls

  resources :footworks

  resources :best_times

  get 'times' => 'best_times#times'
  get 'both' => 'best_times#both'
  get 'scores' => 'high_scores#scores'
  get 'controls_high_scores' => 'controls#high_scores'
  get 'footworks_high_scores' => 'footworks#high_scores'
  get 'verticals_high_scores' => 'verticals#high_scores'

  resources :high_scores
  root 'high_scores#scores'

end
