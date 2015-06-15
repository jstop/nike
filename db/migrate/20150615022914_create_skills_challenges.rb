class CreateSkillsChallenges < ActiveRecord::Migration
  def change
    create_table :skills_challenges do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :team
      t.integer :minutes
      t.integer :seconds

      t.timestamps
    end
  end
end
