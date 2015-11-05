class CreateOrderContentsProducts < ActiveRecord::Migration
  def change
    create_table :order_contents_products do |t|
    	t.belongs_to :order_content, index: true
    	t.belongs_to :product, index: true
    end
  end
end
