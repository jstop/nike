class CreateVerticals < ActiveRecord::Migration
  def change
    create_table :verticals do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :score

      t.timestamps
    end
  end
end
