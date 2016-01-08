class AddColumnReasoningToIssues < ActiveRecord::Migration
  def change
  	  	add_column :issues, :reasoning, :string
  end
end
