class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.references, :user
      t.string, :type
      t.string, :name
      t.string, :author
      t.string, :description
      t.attachment :media

      t.timestamps null: false
    end
  end
end
