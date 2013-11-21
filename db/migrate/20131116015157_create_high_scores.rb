class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :minutes
      t.integer :seconds

      t.timestamps
    end
  end
end
