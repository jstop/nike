class CreateWingspans < ActiveRecord::Migration
  def change
    create_table :wingspans do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :team
      t.integer :score

      t.timestamps
    end
  end
end
