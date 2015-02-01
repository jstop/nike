class CreateFootworks < ActiveRecord::Migration
  def change
    create_table :footworks do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :score

      t.timestamps
    end
  end
end
