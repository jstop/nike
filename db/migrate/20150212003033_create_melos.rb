class CreateMelos < ActiveRecord::Migration
  def change
    create_table :melos do |t|
      t.string :first
      t.string :last
      t.integer :minutes
      t.integer :seconds

      t.timestamps
    end
  end
end
