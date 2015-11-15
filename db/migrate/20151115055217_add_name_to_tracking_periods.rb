class AddNameToTrackingPeriods < ActiveRecord::Migration
  def change
    add_column :tracking_periods, :name, :string
  end
end
