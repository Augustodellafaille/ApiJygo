class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :giver
      t.references :receiver

      t.timestamps null: false
    end
  end
end
