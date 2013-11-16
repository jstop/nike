class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :score

      t.timestamps
    end
  end
end
