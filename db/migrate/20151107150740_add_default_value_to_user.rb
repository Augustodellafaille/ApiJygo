class AddDefaultValueToUser < ActiveRecord::Migration
  def change
  	change_column_default :users, :isshopper, false
  	change_column_default :users, :image, "https://i.imgur.com/CKKLWns.gif"
  	change_column_default :users, :admin, false
  end
end
