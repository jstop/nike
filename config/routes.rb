Nike::Application.routes.draw do
  resources :melos

  resources :cp3s

  resources :verticals, :path => "hotshot" 

  resources :controls, :path => "skills"

  resources :footworks

  resources :best_times

  match 'hotshot', :to => 'verticals#delete_all', :via => :delete
  match 'skills', :to => 'controls#delete_all', :via => :delete
  match 'melos', :to => 'melos#delete_all', :via => :delete
  match 'cp3s', :to => 'cp3s#delete_all', :via => :delete
  match 'footworks', :to => 'footworks#delete_all', :via => :delete
  match 'best_times', :to => 'best_times#delete_all', :via => :delete


  get 'times' => 'best_times#times'
  get 'both' => 'best_times#both'
  get 'scores' => 'high_scores#scores'
  get 'controls_high_scores' => 'controls#high_scores'
  get 'cp3_high_scores' => 'cp3s#high_scores'
  get 'melo_high_scores' => 'melos#high_scores'
  get 'footworks_high_scores' => 'footworks#high_scores'
  get 'verticals_high_scores' => 'verticals#high_scores'

  resources :high_scores
  root 'high_scores#scores'

end
