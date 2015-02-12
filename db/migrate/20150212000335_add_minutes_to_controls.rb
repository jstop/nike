class AddMinutesToControls < ActiveRecord::Migration
  def change
    add_column :controls, :minutes, :integer
  end
end
