class CreateCp3s < ActiveRecord::Migration
  def change
    create_table :cp3s do |t|
      t.string :first
      t.string :last
      t.integer :minutes
      t.integer :seconds

      t.timestamps
    end
  end
end
