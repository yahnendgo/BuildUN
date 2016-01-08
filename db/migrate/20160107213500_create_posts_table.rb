class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.attachment :avatar
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :body
      
      t.timestamps null: false
    end
  end
end
