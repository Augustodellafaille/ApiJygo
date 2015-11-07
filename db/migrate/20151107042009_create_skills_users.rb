class CreateSkillsUsers < ActiveRecord::Migration
  def change
    create_table :skills_users do |t|
    	t.belongs_to :users, index: true
    	t.belongs_to :skills, index: true
    end
  end
end
