class AddScoreToHighScore < ActiveRecord::Migration
  def change
    add_column :high_scores, :score, :integer
  end
end
