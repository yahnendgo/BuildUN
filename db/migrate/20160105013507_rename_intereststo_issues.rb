class RenameIntereststoIssues < ActiveRecord::Migration
	def change
		rename_table :interests, :issues
	end
end
