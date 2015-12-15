class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references, :user
      t.string, :subject
      t.string :body

      t.timestamps null: false
    end
  end
end
