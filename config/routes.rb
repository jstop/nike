Nike::Application.routes.draw do
  resources :best_times

  get 'times' => 'best_times#times'
  get 'both' => 'best_times#both'
  get 'scores' => 'high_scores#scores'

  resources :high_scores
  root 'high_scores#scores'

end
