class CreateIssuesPosts < ActiveRecord::Migration
  def change
    create_table :issues_posts do |t|
      t.references :issue, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
