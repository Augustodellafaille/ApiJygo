class AddIsshopperToUser < ActiveRecord::Migration
  def change
  	add_column :users, :isshopper, :bool
  end
end
