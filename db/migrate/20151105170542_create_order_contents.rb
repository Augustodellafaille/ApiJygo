class CreateOrderContents < ActiveRecord::Migration
  def change
    create_table :order_contents do |t|
      t.references :order, index: true, foreign_key: true
      t.text :comment

      t.timestamps null: false
    end
  end
end
