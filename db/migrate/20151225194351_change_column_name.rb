class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :profiles, :skills, :consultant_skills
  end
end
