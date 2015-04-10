class AddSecondsToControls < ActiveRecord::Migration
  def change
    add_column :controls, :seconds, :integer
  end
end
