class CreateIssuesMedia < ActiveRecord::Migration
  def change
    create_table :issues_media do |t|
      t.references :issue, index: true, foreign_key: true
      t.references :medium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
