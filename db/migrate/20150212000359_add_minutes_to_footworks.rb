class AddMinutesToFootworks < ActiveRecord::Migration
  def change
    add_column :footworks, :minutes, :integer
  end
end
