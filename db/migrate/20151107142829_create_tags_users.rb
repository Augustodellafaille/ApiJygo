class CreateTagsUsers < ActiveRecord::Migration
  def change
    create_table :tags_users do |t|
      t.references :user, index: true
      t.references :tag, index: true
    end
  end
end
