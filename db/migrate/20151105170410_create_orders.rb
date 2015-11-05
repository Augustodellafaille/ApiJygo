class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :shopper
      t.references :customer
      t.references :review, index: true, foreign_key: true
      t.date :date
      t.time :begin_time
      t.time :end_time
      t.boolean :delivered
      t.float :commission_shopper
      t.float :commission_jygo
      t.text :comment

      t.timestamps null: false
    end
  end
end
