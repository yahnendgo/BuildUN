class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.references, :user
      t.string, :name
      t.attachment, :file
      t.string :description

      t.timestamps null: false
    end
  end
end
