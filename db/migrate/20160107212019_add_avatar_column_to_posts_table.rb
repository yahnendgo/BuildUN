class AddAvatarColumnToPostsTable < ActiveRecord::Migration
  def change
   	add_column :posts, :avatar, :attachment
  end
end
