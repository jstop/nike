Nike::Application.routes.draw do
  get 'times' => 'high_scores#times'
  get 'scores' => 'high_scores#scores'

  resources :high_scores
  root 'high_scores#times'

end
