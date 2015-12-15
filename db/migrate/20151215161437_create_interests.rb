class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.attachment, :avatar
      t.string, :name
      t.string :description

      t.timestamps null: false
    end
  end
end
