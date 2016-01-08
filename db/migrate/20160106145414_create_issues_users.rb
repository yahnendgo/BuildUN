class CreateIssuesUsers < ActiveRecord::Migration
  def change
    create_table :issues_users do |t|
      t.references :issue
      t.references :user

      t.timestamps null: false
    end
  end
end
