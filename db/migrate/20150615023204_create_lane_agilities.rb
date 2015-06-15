class CreateLaneAgilities < ActiveRecord::Migration
  def change
    create_table :lane_agilities do |t|
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
