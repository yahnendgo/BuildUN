class AddVolunteerSkillsColumnToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :volunteer_skills, :string
  end
end
