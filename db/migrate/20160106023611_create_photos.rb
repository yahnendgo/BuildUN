class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :avatar
      t.references :user
      t.string :description
      t.string :position

      t.timestamps null: false
    end
  end
end
