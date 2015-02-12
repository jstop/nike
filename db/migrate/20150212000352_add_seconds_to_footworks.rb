class AddSecondsToFootworks < ActiveRecord::Migration
  def change
    add_column :footworks, :seconds, :integer
  end
end
