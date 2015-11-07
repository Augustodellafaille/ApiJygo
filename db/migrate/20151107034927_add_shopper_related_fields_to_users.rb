class AddShopperRelatedFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :phone, :string
  	add_column :users, :latitude, :float
  	add_column :users, :longitude, :float
  	add_column :users, :city, :string
  	add_column :users, :zip_code, :string
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :admin, :boolean
  	add_column :users, :bio, :text
  	add_column :users, :availability, :string
  	add_column :users, :total_com, :float
  	add_column :users, :radius, :integer
  	add_column :users, :accept_auto, :boolean
  end
end
