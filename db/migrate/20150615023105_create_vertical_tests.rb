class CreateVerticalTests < ActiveRecord::Migration
  def change
    create_table :vertical_tests do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :team
      t.integer :score

      t.timestamps
    end
  end
end
