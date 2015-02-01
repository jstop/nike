class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :score

      t.timestamps
    end
  end
end
