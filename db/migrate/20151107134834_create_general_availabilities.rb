class CreateGeneralAvailabilities < ActiveRecord::Migration
  def change
    create_table :general_availabilities do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :weekday
      t.time :begin_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
